# frozen_string_literal: true

#  Build a tic-tac-toe game on the command line where
#  - Two human players can play against each other
#  - The board is displayed in between turns.
#  - Do not share info b/w classes more than needed.

require_relative 'lib/gameboard'
require_relative 'lib/player'

logo = File.read('./lib/logo.txt')
pieces = %w[O X]
players = []

# Welcome the user with the ASCII art logo
puts logo
puts 'Welcome to Tic-Tac-Toe'

# Gather the inputs needed to create the 2 players
2.times do |i|
  print "You will be Player #{i + 1}. Enter your name: "
  name = gets.chomp

  if i.zero?
    puts 'Game piece selection:'
    print "Input <Number 1> + <Enter> for X's, or <Enter> for O's: "
    piece = gets[0].to_i
    piece = if piece == 1
              pieces.pop
            else
              pieces.shift
            end
  else
    piece = pieces.pop
  end
  players << [name, piece]
end

# Instantiate objects needed for game
board = Gameboard.new
player1 = Player.new(players[0][0], players[0][1])
player2 = Player.new(players[1][0], players[1][1])

# To remove post-debug
ObjectSpace.each_object(Player) do |player|
  puts player.inspect
end

# Main loop for game functionality
board.draw
