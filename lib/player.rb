require './lib/pieces/pawn'

class Player
  attr_reader :name, :type, :pieces

  def initialize(name, type)
    @name = name
    @type = type
    @pieces = create_pieces
  end

  def create_pieces
    container = []
    create_pawns(container)
    container
  end

  private

  def create_pawns(container)
    8.times do |x|
      container.push(Pawn.new(type, [x, 1]))
    end
  end
end
