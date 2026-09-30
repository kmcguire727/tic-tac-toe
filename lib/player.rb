class Player
  attr_accessor :name, :piece

  def initialize(name, piece)
    self.name = name
    self.piece = piece
  end

  def print
    puts "The #{self.class} class is #{name} has the piece #{piece}"
  end
end
