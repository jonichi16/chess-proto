require './lib/player'

describe Player do
  describe '#create_pieces' do
    context 'when player is White Player' do
      subject(:create_white) { described_class.new('White Player', 'white') }

      matcher :be_white do
        match { |item| item.type == create_white.type }
      end 

      it 'create white pieces' do
        pieces = create_white.pieces
        pieces.each { |piece| expect(piece).to be_white }
      end
    end

    context 'when player is Black Player' do
      subject(:create_black) { described_class.new('Black Player', 'black') }

      matcher :be_black do
        match { |item| item.type == create_black.type }
      end 

      it 'create black pieces' do
        pieces = create_black.pieces
        pieces.each { |piece| expect(piece).to be_black }
      end
    end

    context 'when creating pieces' do
      subject(:player_create) { described_class.new('White Player', 'white') }

      it 'create 8 pawns to pieces' do
        pieces = player_create.pieces
        expect(pieces).to include(Pawn).exactly(8).times
      end

      it 'create pawn at [0, 1] position' do
        position = player_create.pieces[0].position
        expect(position).to eq([0, 1])
      end
    end
  end  
end