# * Super class for pieces
class Piece
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
end
