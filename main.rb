=begin

  Build a tic-tac-toe game on the command line where 
  - Two human players can play against each other 
  - The board is displayed in between turns.
  - Build your game, taking care to not share information between classes any more than you have to.   

  What should be a class? Instance variable? Method? A few minutes of thought can save you from wasting an hour of coding.

=end

require_relative 'lib/game_board'
require_relative 'lib/player'

board = Gameboard.new
Player.new
board.print_board