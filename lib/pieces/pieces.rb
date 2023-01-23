# frozen_string_literal: true

# * Super class for pieces
class Piece
  attr_reader :type, :position, :symbol, :moves

  def initialize(type, position)
    @type = type
    @position = position
    @symbol = assign_symbol
    @moves = add_moves(position)
  end

  def to_s
    symbol
  end

  def move_position(type, destination)
    initialize(type, destination)
  end
end
