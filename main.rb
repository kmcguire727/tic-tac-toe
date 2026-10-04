#  Build a tic-tac-toe game on the command line where
#  - Two human players can play against each other
#  - The board is displayed in between turns.
#  - Do not share info b/w classes more than needed.

require_relative "lib/gameboard"
require_relative "lib/player"
require_relative "lib/logo"

pieces = %w[O X]
players = []
board = Gameboard.new

# Welcome the user
Logo.print_logo

# Gather the inputs needed to create the 2 players
2.times do |i|
  print "Player #{i + 1}: Enter your name => "
  name = gets.chomp

  if i.zero?
    print "Game piece selection (1 = X's, 0 = O's) => "

    # This line is going the work of several:
    # - gets input from the user
    # - takes first char and throws rest away
    # - converts to int (if it's not a number it converts to 0)
    # - set piece assigns per ! array operations to prevent dupes
    piece = gets[0].to_i == 1 ? pieces.pop : pieces.shift
  else
    piece = pieces.pop
  end

  players << Player.new(name, piece)
end

# Instantiate objects needed for game
players.reverse! unless players[0].piece == "X"

# Main loop for game functionality
until Player.move_count >= 9
  board.draw
  players[0].take_turn
  break if players[0].winner == true || Player.move_count >= 9

  board.draw
  players[1].take_turn
  break if players[1].winner == true || Player.move_count >= 9
end

p Logo.x_wins if players[0].winner
p Logo.o_wins if players[1].winner
p Logo.draw if Player.move_count >= 9
