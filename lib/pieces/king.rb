# frozen_string_literal: true

require './lib/pieces/pieces'

KING_MOVES = [[1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1], [1, 0]].freeze

# * Class for creating kings
class King < Piece
  def add_moves(position)
    valid_moves = []
    KING_MOVES.each do |move|
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
    type == 'white' ? "\u2654" : "\u265A"
  end
end
