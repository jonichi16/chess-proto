require './lib/pieces/pawn'
require './lib/pieces/rook'
require './lib/pieces/knight'
require './lib/pieces/bishop'
require './lib/pieces/queen'
require './lib/pieces/king'

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
    y = type == 'white' ? 1 : 6
    8.times do |x|
      container.push(Pawn.new(type, [x, y]))
    end
  end

  def create_rooks(container)
    y = type == 'white' ? 0 : 7
    container.push(Rook.new(type, [0, y]))
    container.push(Rook.new(type, [7, y]))
  end

  def create_knights(container)
    y = type == 'white' ? 0 : 7
    container.push(Knight.new(type, [1, y]))
    container.push(Knight.new(type, [6, y]))
  end

  def create_bishops(container)
    y = type == 'white' ? 0 : 7
    container.push(Bishop.new(type, [2, y]))
    container.push(Bishop.new(type, [5, y]))
  end

  def create_queen(container)
    y = type == 'white' ? 0 : 7
    container.push(Queen.new(type, [3, y]))
  end

  def create_king(container)
    y = type == 'white' ? 0 : 7
    container.push(King.new(type, [4, y]))
  end
end

player1 = Player.new('Jon', 'white')
player2 = Player.new('Bon', 'black')
puts 'player 1'
p player1.pieces
puts 'player 2'
p player2.pieces
