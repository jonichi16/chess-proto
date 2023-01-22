# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating pawns
class Pawn < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2659" : "\u265F"
  end
end
