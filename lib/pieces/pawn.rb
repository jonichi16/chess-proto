class Pawn
  attr_reader :type, :position, :symbol, :moves

  def initialize(type, position)
    @type = type
    @position = position
    @symbol = assign_symbol
    @moves = []
  end

  private

  def assign_symbol
    type == 'white' ? "\u2659" : "u\265F"
  end
end