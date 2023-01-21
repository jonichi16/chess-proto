require './lib/pieces/pawn'
require './lib/pieces/rook'
require './lib/pieces/knight'

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
    create_rooks(container)
    create_knights(container)
    container
  end

  private

  def create_pawns(container)
    y = type == 'white' ? 1 : 6
    8.times do |x|
      container.push(Pawn.new(type, [x, y]))
    end
  end

  def create_rooks(container)
    container.push(Rook.new(type, [0, 0]))
    container.push(Rook.new(type, [7, 0]))
  end

  def create_knights(container)
    container.push(Knight.new(type, [1, 0]))
    container.push(Knight.new(type, [6, 0]))
  end
end
