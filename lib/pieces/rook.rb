# frozen_string_literal: true

# rubocop:disable Layout/LineLength
ROOK_MOVES = [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]].freeze
# rubocop:enable Layout/LineLength

require './lib/pieces/pieces'

# * Class for creating rooks
class Rook < Piece
  def add_moves(position)
    valid_moves = []
    ROOK_MOVES.each do |move|
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
    type == 'white' ? "\u2656" : "\u265C"
  end
end
