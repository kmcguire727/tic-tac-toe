class Gameboard
  attr_accessor :board

  def initialize
    self.board = [
      [" ", "a", "b", "c"],
      ["1", "·", "·", "·"],
      ["2", "·", "·", "·"],
      ["3", "·", "·", "·"]
    ]
  end

  def draw
    puts
    board.each do |row|
      puts row.reduce("") { |acc, word| "#{acc} #{word} " }
    end
    puts
  end

  def place_piece(player)
    x = player.move[-1][0]
    y = player.move[-1][1]
    board[x][y]
    game_over
  end
end
