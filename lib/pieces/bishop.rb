# frozen_string_literal: true

# * Class for creating bishops
class Bishop
  attr_reader :type, :position, :symbol, :moves

  def initialize(type, position)
    @type = type
    @position = position
    @symbol = assign_symbol
    @moves = []
  end

  private

  def assign_symbol
    type == 'white' ? "\u2657" : "\u265D"
  end
end
