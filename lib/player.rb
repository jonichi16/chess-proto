# frozen_string_literal: true

require './lib/pieces/pawn'
require './lib/pieces/rook'
require './lib/pieces/knight'
require './lib/pieces/bishop'
require './lib/pieces/queen'
require './lib/pieces/king'

# * Class for creating players
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
    create_bishops(container)
    create_queen(container)
    create_king(container)
    container
  end

  private

  def create_pawns(container)
    x = type == 'white' ? 1 : 6
    8.times do |y|
      container.push(Pawn.new(type, [x, y]))
    end
  end

  def create_rooks(container)
    x = type == 'white' ? 0 : 7
    container.push(Rook.new(type, [x, 0]))
    container.push(Rook.new(type, [x, 7]))
  end

  def create_knights(container)
    x = type == 'white' ? 0 : 7
    container.push(Knight.new(type, [x, 1]))
    container.push(Knight.new(type, [x, 6]))
  end

  def create_bishops(container)
    x = type == 'white' ? 0 : 7
    container.push(Bishop.new(type, [x, 2]))
    container.push(Bishop.new(type, [x, 5]))
  end

  def create_queen(container)
    x = type == 'white' ? 0 : 7
    container.push(Queen.new(type, [x, 3]))
  end

  def create_king(container)
    x = type == 'white' ? 0 : 7
    container.push(King.new(type, [x, 4]))
  end
end
