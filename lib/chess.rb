# frozen_string_literal: true

require './lib/player'
require './lib/board'
require './lib/utility/message'
require './lib/utility/moves'

# * Class for the game flow
class Chess
  include Message
  include Moves
  attr_reader :board, :white_player, :black_player, :current_player

  def initialize(board = Board.new)
    @board = board
    @white_player = Player.new('White Player', 'white')
    @black_player = Player.new('Black Player', 'black')
    @current_player = white_player
  end

  def play_game
    puts display_current_board
    10.times { turn_order }
  end

  def turn_order
    update_position
    player_switch
  end

  def player_switch
    @current_player = current_player == white_player ? black_player : white_player
  end

  def display_current_board
    white_pieces = white_player.pieces
    black_pieces = black_player.pieces
    board.display_board(white_pieces, black_pieces)
  end

  def player_input
    loop do
      player_input = gets.chomp.downcase
      verified = verify_input(player_input) if player_input.match?(/^[a-h][1-8][a-h][1-8]$/)
      return verified if verified

      puts "\n\e[31mIllegal move!\e[0m Please type the correct coordinate of your move based on the board"
    end
  end

  def input_converter(input)
    input_array = input.chars
    [
      [input_array[1].to_i - 1, input_array[0].ord - 97],
      [input_array[3].to_i - 1, input_array[2].ord - 97]
    ]
  end

  # rubocop:disable Metrics/AbcSize
  def verify_input(input)
    legal_move = input_converter(input)
    position = board.board[legal_move[0][0]][legal_move[0][1]]
    destination = board.board[legal_move[1][0]][legal_move[1][1]]
    return legal_move if position_check(position, destination) && piece_legal_move(position, legal_move[1])
  end
  # rubocop:enable Metrics/AbcSize

  def piece_legal_move(piece, destination)
    return piece.moves.include?(destination) if piece.instance_of?(Knight)

    position_allowed = []
    piece.moves.each do |move|
      position_allowed.push(move) unless board.board[move[1]][move[0]]
    end
    position_allowed.include?(destination)
  end

  def position_check(position, destination)
    position && position.type == current_player.type && (destination.nil? || destination.type != current_player.type)
  end

  def update_position
    puts "\n#{current_player.name}'s turn! Please type the coordinate of your move. (e.g. d2d4, b1c3)"
    move = player_input
    update_piece(move[0], move[1])
    Message.clear_screen
    puts display_current_board
  end

  private

  def update_piece(position, destination)
    update_opponent(destination)
    current_pieces = current_player.type == 'white' ? white_player.pieces : black_player.pieces
    current_pieces.each do |piece|
      piece.move_position(piece.type, destination) if piece.position == position
    end
  end

  def update_opponent(destination)
    opponent_pieces = current_player.type == 'white' ? black_player.pieces : white_player.pieces
    opponent_pieces.reject! do |piece|
      piece.position == destination
    end
  end
end
