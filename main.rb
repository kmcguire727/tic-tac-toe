# frozen_string_literal: true

#  Build a tic-tac-toe game on the command line where
#  - Two human players can play against each other
#  - The board is displayed in between turns.
#  - Do not share info b/w classes more than needed.

require_relative 'lib/gameboard'
require_relative 'lib/player'
require_relative 'lib/logo'

pieces = %w[O X]
players = []
game_over = false

def get_turn_input
  puts 'Make your move:'
  print 'Input X-Y coordinates per the gameboard separated by hyphen: '
  gets.chomp
end

# Welcome the user
Logo.print_logo

# Gather the inputs needed to create the 2 players
2.times do |i|
  print "You will be Player #{i + 1}. Enter your name: "
  name = gets.chomp

  if i.zero?
    puts 'Game piece selection:'
    print "Input <Number 1> + <Enter> for X's, or <Enter> for O's: "

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
board = Gameboard.new

# Main loop for game functionality
board.draw

until game_over
  players[0].piece == 'X' ? players[0].take_turn(get_turn_input) : players[1].take_turn(get_turn_input)

end
