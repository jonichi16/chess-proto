# frozen_string_literal: true

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
        pawns = player_create.pieces
        expect(pawns).to include(Pawn).exactly(8).times
      end

      it 'create pawn at [0, 1] position' do
        position = player_create.pieces[0].position
        expect(position).to eq([0, 1])
      end

      it 'create 2 rooks to pieces' do
        rooks = player_create.pieces
        expect(rooks).to include(Rook).exactly(2).times
      end

      it 'create 2 knights to pieces' do
        knights = player_create.pieces
        expect(knights).to include(Knight).exactly(2).times
      end

      it 'create 2 bishop to pieces' do
        bishop = player_create.pieces
        expect(bishop).to include(Bishop).exactly(2).times
      end

      it 'create 1 queen to pieces' do
        queen = player_create.pieces
        expect(queen).to include(Queen).exactly(1).times
      end

      it 'create 1 king to pieces' do
        king = player_create.pieces
        expect(king).to include(King).exactly(1).times
      end
    end
  end
end
