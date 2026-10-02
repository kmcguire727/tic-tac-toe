require "matrix"

# Simple encapsulation for all possible winning states
module WinConditions
  def self.winning_conditions
    win_array = []

    win_condition = [
      [1, 0, 0],
      [1, 0, 0],
      [1, 0, 0]
    ]

    win_condition = [
      [1, 0, 0],
      [0, 1, 0],
      [0, 0, 1]
    ]

    win_condition = [
      [1, 1, 1],
      [0, 0, 0],
      [0, 0, 0]
    ]

    win_condition = [
      [1, 0, 0],
      [1, 0, 0],
      [1, 0, 0]
    ]

    win_condition = [
      [1, 0, 0],
      [0, 1, 0],
      [0, 0, 1]
    ]

    win_condition = [
      [1, 1, 1],
      [0, 0, 0],
      [0, 0, 0]
    ]

    win_condition = [
      [1, 0, 0],
      [1, 0, 0],
      [1, 0, 0]
    ]

    win_condition = [
      [1, 0, 0],
      [0, 1, 0],
      [0, 0, 1]
    ]

    win_condition = [
      [1, 1, 1],
      [0, 0, 0],
      [0, 0, 0]
    ]
  end
end
