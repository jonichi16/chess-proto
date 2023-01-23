# frozen_string_literal: true

# * Class for creating the board
class Board
  attr_reader :board

  def initialize
    @board = nil
  end

  def display_board(white_pieces, black_pieces)
    @board = create_board
    board_white_transform(white_pieces)
    board_black_transform(black_pieces)
    board_transform
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
      board[x][y] = piece
    end
  end

  def board_black_transform(black_pieces)
    black_pieces.each do |piece|
      x = piece.position[0]
      y = piece.position[1]
      board[x][y] = piece
    end
  end

  def row_transform(row)
    row.map do |item|
      item.nil? ? ' ' : item
    end
  end

  # rubocop:disable Metrics
  def board_transform
    board_to_display = board.each_with_index.map do |row, r|
      transformed_row = row_transform(row)
      row_to_display = transformed_row.each_with_index.map do |col, c|
        if r.even?
          r.even? && c.even? ? "\e[42m#{col} \e[0m" : "\e[7m#{col} \e[27m"
        else
          r.odd? && c.odd? ? "\e[42m#{col} \e[0m" : "\e[7m#{col} \e[27m"
        end
      end
      "#{r + 1} #{row_to_display.join}"
    end
    "#{board_to_display.reverse.join("\n")}\n  A B C D E F G H\n"
  end
  # rubocop:enable Metrics
end
