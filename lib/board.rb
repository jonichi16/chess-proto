# frozen_string_literal: true

# * Class for creating the board
class Board
  attr_reader :board

  def initialize
    @board = create_board
  end

  def display_board(white_pieces, black_pieces)
    board_white_transform(white_pieces)
    board_black_transform(black_pieces)
    board
  end

  private

  def create_board
    [
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8),
      Array.new(8)
    ]
  end

  def board_white_transform(white_pieces)
    white_pieces.each do |piece|
      x = piece.position[0]
      y = piece.position[1]
      board[x][y] = piece.symbol
    end
  end

  def board_black_transform(black_pieces)
    black_pieces.each do |piece|
      x = piece.position[0]
      y = piece.position[1]
      board[x][y] = piece.symbol
    end
  end
end
