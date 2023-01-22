# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating queens
class Queen < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2655" : "\u265B"
  end
end
