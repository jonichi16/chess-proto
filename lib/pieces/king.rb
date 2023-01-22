# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating kings
class King < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2654" : "\u265A"
  end
end
