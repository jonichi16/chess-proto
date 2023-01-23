# frozen_string_literal: true

KNIGHT_MOVES = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

require './lib/pieces/pieces'

# * Class for creating knights
class Knight < Piece
  def add_moves(position)
    valid_moves = []
    KNIGHT_MOVES.each do |move|
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
    type == 'white' ? "\u2658" : "\u265E"
  end
end

knight = Knight.new('white', [4, 4])
p knight
