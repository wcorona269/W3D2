class Board

  def initialize(size=4)
    @grid = Array.new(size){Array.new(size, "_")}
    @size = size
  end

  def populate
    length = @size * @size/2
    alpha = ("a".."z").to_a
    parallel = []
    length.times { parallel << alpha.sample.upcase }
  
    parallel.length.times do |i|
      2.times do 
      idx1 = 0 
      idx2 = 0
        while @grid[idx1][idx2] != "_"
          idx1 = rand(0...@size)
          idx2 = rand(0...@size)
        end
        @grid[idx1][idx2] = parallel[i]

        end
    end
  end

  def render
    row = []
    @grid.each {|row| puts row.join(" ")}

  end


end

b = Board.new
b.render