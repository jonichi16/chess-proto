# frozen_string_literal: true

require './lib/chess'

describe Chess do
  describe '#display_current_board' do
    subject(:game_display) { described_class.new(board) }
    let(:board) { double('board') }

    it 'sends message to board to display current board' do
      expect(board).to receive(:display_board)
      game_display.display_current_board
    end
  end

  describe '#player_input' do
    subject(:game_input) { described_class.new }

    context 'when player input is valid' do
      it 'does not return error message' do
        valid_input = 'd2d4'
        allow(game_input).to receive(:gets).and_return(valid_input)
        err_msg = "\n\e[31mInvalid Input!\e[0m Please type the correct coordinate of your move based on the board"
        expect(game_input).not_to receive(:puts).with(err_msg)
        game_input.player_input
      end
    end

    context 'when player input is invalid once, then valid' do
      it 'returns error mesage once' do
        letter = 'a'
        valid_input = 'd2d4'
        allow(game_input).to receive(:gets).and_return(letter, valid_input)
        err_msg = "\n\e[31mInvalid Input!\e[0m Please type the correct coordinate of your move based on the board"
        expect(game_input).to receive(:puts).with(err_msg).once
        game_input.player_input
      end
    end

    context 'when player input is invalid twice, then valid' do
      it 'returns error mesage twice' do
        letter = 'a'
        invalid_input = 'd9d1'
        valid_input = 'a1h8'
        allow(game_input).to receive(:gets).and_return(letter, invalid_input, valid_input)
        err_msg = "\n\e[31mInvalid Input!\e[0m Please type the correct coordinate of your move based on the board"
        expect(game_input).to receive(:puts).with(err_msg).twice
        game_input.player_input
      end
    end
  end
end
