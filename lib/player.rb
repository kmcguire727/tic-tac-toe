class Player
  attr_accessor :name, :piece, :moves, :first_move

  def initialize(name, piece)
    self.name = name
    self.piece = piece
    self.moves = []
    self.first_move = (self.piece == 'X' ? 1 : 0)
  end

  def take_turn(xy)
    x, y = xy.split('-')
    moves << [x, y]
  end
end
