require './lib/player'

describe Player do
  describe '#create_pieces' do
    context 'when player is the White Player' do
      subject(:white_player_create) { described_class.new('White Player', 'white') }

      matcher :be_white do
        match { |item| item.type == white_player_create.type }
      end 

      it 'create white pieces' do
        pieces = white_player_create.pieces
        pieces.each { |piece| expect(piece).to be_white }
      end

      it 'create 8 pawns to pieces' do
        pieces = white_player_create.pieces
        expect(pieces).to include(Pawn).exactly(8).times
      end

      it 'create pawn at [0, 1] position' do
        position = white_player_create.pieces[0].position
        expect(position).to eq([0, 1])
      end
    end
  end  
end
