class Player
  LEGEND = { "a" => 0, "b" => 1, "c" => 2 }.freeze
  @@moves = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ]

  attr_accessor :name, :piece

  def initialize(name, piece)
    self.name = name
    self.piece = piece
  end

  def take_turn
    turn_complete = false

    until turn_complete
      begin
        print "#{name} (#{piece}'s) - input α-# coordinates per the gameboard: "
        input = gets.chomp.split("-")
        x = LEGEND[input[0]]
        y = input[1].to_i

        raise ArgumentError unless @@moves[x][y] == 0

        @@moves[x][y] = piece
        turn_complete = true
        pp @@moves
      rescue ArgumentError, TypeError => e
        puts "That is an invalid move. Try again."
      end
    end
  end
end
