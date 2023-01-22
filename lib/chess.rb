# frozen_string_literal: true

require './lib/player'
require './lib/board'

# * Class for the game flow
class Chess
  attr_reader :board, :white_player, :black_player, :current_player

  def initialize(board = Board.new)
    @board = board
    @white_player = Player.new('White Player', 'white')
    @black_player = Player.new('Black Player', 'black')
    @current_player = white_player
  end

  def play_game
    puts display_current_board
  end

  def display_current_board
    white_pieces = white_player.pieces
    black_pieces = black_player.pieces
    board.display_board(white_pieces, black_pieces)
  end

  def player_input
    loop do
      player_input = gets.chomp.downcase
      verified = player_input if player_input.match?(/^[a-h][1-8][a-h][1-8]$/)
      return verified if verified

      puts "\n\e[31mInvalid Input!\e[0m Please type the correct coordinate of your move based on the board"
    end
  end

  def input_converter(input)
    input_array = input.chars
    [
      [input_array[0].ord - 97, input_array[1].to_i - 1],
      [input_array[2].ord - 97, input_array[3].to_i - 1]
    ]
  end
end
