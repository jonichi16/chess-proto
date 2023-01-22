# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating rooks
class Rook < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2656" : "\u265C"
  end
end
