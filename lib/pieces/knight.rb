class Knight
  attr_reader :type, :position, :symbol, :moves

  def initialize(type, position)
    @type = type
    @position = position
    @symbol = assign_symbol
    @moves = []
  end

  private

  def assign_symbol
    type == 'white' ? "\u2658" : "u\265E"
  end
end