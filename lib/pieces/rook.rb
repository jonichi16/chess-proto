# frozen_string_literal: true

# * Class for creating rooks
class Rook
  attr_reader :type, :position, :symbol, :moves

  def initialize(type, position)
    @type = type
    @position = position
    @symbol = assign_symbol
    @moves = []
  end

  def to_s
    symbol
  end

  def move_position(destination)
    @position = destination
  end

  private

  def assign_symbol
    type == 'white' ? "\u2656" : "\u265C"
  end
end
