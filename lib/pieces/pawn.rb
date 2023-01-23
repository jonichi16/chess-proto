# frozen_string_literal: true

require './lib/pieces/pieces'

PAWN_MOVES_WHITE = [[1, 0], [2, 0], [1, 1], [1, -1]].freeze
PAWN_MOVES_BLACK = [[-1, 0], [-2, 0], [-1, -1], [-1, 1]].freeze

# * Class for creating pawns
class Pawn < Piece
  attr_reader :double_move, :take_move

  def initialize(type, position, double = true)
    @double_move = double
    @take_move = false
    super(type, position)
  end

  # rubocop:disable Metrics
  def add_moves(position)
    valid_moves = []
    moves = type == 'white' ? PAWN_MOVES_WHITE : PAWN_MOVES_BLACK
    moves.each_with_index do |move, i|
      x = move[0] + position[0]
      y = move[1] + position[1]
      next if !x.between?(0, 7) ||
              !y.between?(0, 7) ||
              (i == 1 && !double_move) ||
              ((i == 2 || i == 3) && !take_move)

      valid_moves.push([x, y])
    end
    valid_moves
  end
  # rubocop:enable Metrics

  def move_position(type, destination)
    initialize(type, destination, false)
  end

  private

  def assign_symbol
    type == 'white' ? "\u2659" : "\u265F"
  end
end
