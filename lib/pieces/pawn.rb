# frozen_string_literal: true

require './lib/pieces/pieces'

PAWN_MOVES = [[1, 0], [2, 0], [1, 1]].freeze

# * Class for creating pawns
class Pawn < Piece
  attr_reader :double_move, :take_move

  def initialize(type, position)
    @double_move = true
    @take_move = false
    super
  end

  # rubocop:disable Metrics
  def add_moves(position)
    valid_moves = []
    PAWN_MOVES.each_with_index do |move, i|
      x = move[0] + position[0]
      y = move[1] + position[1]
      next if !x.between?(1, 8) ||
              !y.between?(1, 8) ||
              (i == 1 && !double_move) ||
              (i == 2 && !take_move)

      valid_moves.push([x, y])
    end
    valid_moves
  end
  # rubocop:enable Metrics

  def move_position(destination)
    @position = destination
    @double_move = false
  end

  private

  def assign_symbol
    type == 'white' ? "\u2659" : "\u265F"
  end
end
