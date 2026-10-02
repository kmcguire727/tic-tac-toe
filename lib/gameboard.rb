require_relative 'player'

class Gameboard
  attr_accessor :board

  def initialize
    self.board = [
      [' ', 'a', 'b', 'c'],
      ['0', '·', '·', '·'],
      ['1', '·', '·', '·'],
      ['2', '·', '·', '·']
    ]
  end

  def draw
    update_board!
    puts
    board.each do |row|
      puts row.reduce('') { |acc, word| "#{acc} #{word} " }
    end
    puts
  end

  def update_board!
    Player.move_matrix.each_with_index do |row, row_idx|
      row.each_with_index do |element, col_idx|
        board[col_idx + 1][row_idx + 1] = element unless element == 0
      end
    end
  end
end
