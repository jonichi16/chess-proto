# frozen_string_literal: true

# * Class for creating queens
class Queen
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
    type == 'white' ? "\u2655" : "\u265B"
  end
end
