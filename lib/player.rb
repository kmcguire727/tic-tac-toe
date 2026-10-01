class Player
  LEGEND = { "a" => 1, "b" => 2, "c" => 3 }.freeze
  attr_accessor :name, :piece, :moves, :first_move

  def initialize(name, piece)
    self.name = name
    self.piece = piece
    self.moves = []
  end

  def take_turn
    print "#{name} (#{piece}'s) - input X-Y coordinates per the gameboard: "
    input = gets.chomp.split("-")
    x = input[0]
    y = input[1].to_i
    moves << [LEGEND[x], y]
  end
end
