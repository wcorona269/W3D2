

class Card
  attr_accessor :val, :showing

  def initialize(val)
    @val = val
    @showing = false

  end

  def hide
    @showing = false
  end

  def reveal
    @showing = true
  end

  def to_s
    @val
  end

  

  
end

card = Card.new("A")



