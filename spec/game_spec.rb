require 'game'

describe Game do
  subject(:game) { described_class.new('Lucas', 'Tim') }

  subject(:lucas) { Player.new('Lucas') }
  subject(:tim) { Player.new('Tim') }

  describe 'attack' do
    it 'damages the player' do
      expect(lucas).to receive(:receive_damage)
      game.attack(lucas)
    end
  end

  describe 'initializing players' do
    subject(:game) { described_class.new(player1, player2) }
    let(:player1) { double :player }
    let(:player2) { double :player }

    it 'creates the first player' do
      expect(game.player1).to eq player1
    end

    it 'creates the second player' do
      expect(game.player2).to eq player2
    end

    it 'allocates the next_turn to a player' do
    expect(game.current_turn).to eq player1
    end

    describe '#switch_turns' do
      it 'switches the turn' do
        game.switch_turns
        expect(game.current_turn).to eq player2
      end
    end

  end
end
