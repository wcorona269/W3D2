# require "byebug"
require_relative "card"

class Board

  attr_reader :grid

  def initialize(size=4)
    @grid = Array.new(size){Array.new(size)}
    @size = size
  end

  def populate
    length = @size * @size/2
    alpha = ("a".."z").to_a
    parallel = []
    length.times { |i| parallel << alpha[i].upcase }
    p parallel
    parallel.length.times do |i|
      2.times do 
       
        # debugger
        idx1 = 0 
        idx2 = 0
        while !@grid[idx1][idx2].nil?
          # debugger
          idx1 = rand(0...@size)
          idx2 = rand(0...@size)
        end
        # debugger
          @grid[idx1][idx2] = Card.new(parallel[i])
   
        end
    end
  end

  def render
     @grid.each {|row| puts row.join(" ")}
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def reveal(pos)
    p self[pos]
  end

  def won?
    @grid.flatten.none?("_")
  end

  #check if showing
  #if already showing, do nothing
  #if not showing, return value of card it revealed
  def reveal(pos)
   self[pos].val
    if self[pos].showing
      self[pos].val
    end
  end
end

b = Board.new

b.populate


p b.reveal([1,2])