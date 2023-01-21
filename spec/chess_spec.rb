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
end