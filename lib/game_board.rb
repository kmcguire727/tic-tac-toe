class Gameboard
  attr_accessor :board

  def initialize
    @board = [
      ['·', '·', '·'],
      ['·', '·', '·'],
      ['·', '·', '·']
    ]
  end

  def print_board
    self.board.each do |row|
      puts row.reduce("") { |acc, word| acc + " " + word + " " }
    end
  end
end