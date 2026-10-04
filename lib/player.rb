require "matrix"

class Player
  LEGEND = { "a" => 0, "b" => 1, "c" => 2 }.freeze
  @@move_matrix = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ]
  @@move_count = 0

  attr_accessor :name, :piece, :move_map, :winner

  def self.move_matrix
    @@move_matrix
  end

  def self.move_count
    @@move_count
  end

  def initialize(name, piece)
    self.name = name
    self.piece = piece
    self.winner = false
    self.move_map = Matrix.zero(3)
  end

  def take_turn
    turn_complete = false

    until turn_complete
      begin
        print "#{name} (#{piece}'s) - input α-# coordinates per the gameboard: "
        input = gets.chomp.split("-")
        x = LEGEND[input[0]]
        y = input[1].to_i

        raise ArgumentError unless @@move_matrix[x][y] == 0

        @@move_matrix[x][y] = piece
        move_map[x, y] = 1
        turn_complete = true
        @@move_count += 1
        check_for_win
      rescue ArgumentError, TypeError
        puts "That is an invalid move. Try again."
      end
    end
  end

  def check_for_win
    move_map_diag_1 = move_map[0, 0] + move_map[1, 1] + move_map[2, 2]
    move_map_diag_2 = move_map[2, 0] + move_map[1, 1] + move_map[0, 2]
    if move_map_diag_1 == 3 || move_map_diag_2 == 3
      self.winner = true
    else
      3.times.with_index do |e, i|
        if move_map.column(i).sum == 3 || move_map.row(i).sum == 3
          self.winner = true
          break
        end
      end
    end
  end
end
