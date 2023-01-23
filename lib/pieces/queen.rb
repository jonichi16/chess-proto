# frozen_string_literal: true

# rubocop:disable Layout/LineLength
QUEEN_MOVES = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7], [-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7], [-1, -1], [-2, -2], [-3, -3], [-4, -4], [-5, -5], [-6, -6], [-7, -7], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]].freeze
# rubocop:enable Layout/LineLength

require './lib/pieces/pieces'

# * Class for creating queens
class Queen < Piece
  def add_moves(position)
    valid_moves = []
    QUEEN_MOVES.each do |move|
      x = move[0] + position[0]
      y = move[1] + position[1]
      next if !x.between?(0, 7) ||
              !y.between?(0, 7)

      valid_moves.push([x, y])
    end
    valid_moves
  end

  private

  def assign_symbol
    type == 'white' ? "\u2655" : "\u265B"
  end
end
