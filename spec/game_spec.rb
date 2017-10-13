require 'game'

describe Game do
  subject(:game) { described_class.new('Liv', 'Tim') }

  subject(:liv) { Player.new('Liv') }
  subject(:tim) { Player.new('Tim') }

  describe 'attack' do
    it 'damages the player' do
      expect(liv).to receive(:receive_damage)
      game.attack(liv)
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
  end
end
