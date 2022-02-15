class Game

  @board.render


pos = gets.chomp.split(" ").map(&:to_i)
@board.reveal(pos)



end