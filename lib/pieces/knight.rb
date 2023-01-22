# frozen_string_literal: true

require './lib/pieces/pieces'

# * Class for creating knights
class Knight < Piece
  private

  def assign_symbol
    type == 'white' ? "\u2658" : "\u265E"
  end
end
