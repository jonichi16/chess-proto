# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating bishops
class Bishop < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2657" : "\u265D"
  end
end
