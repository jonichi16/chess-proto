# frozen_string_literal: true

# rubocop:disable Layout/LineLength
BISHOP_MOVES = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7], [-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7], [-1, -1], [-2, -2], [-3, -3], [-4, -4], [-5, -5], [-6, -6], [-7, -7]].freeze
# rubocop:enable Layout/LineLength

require './lib/pieces/pieces'

# * Class for creating bishops
class Bishop < Piece
  def add_moves(position)
    valid_moves = []
    BISHOP_MOVES.each do |move|
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
    type == 'white' ? "\u2657" : "\u265D"
  end
end
