require 'player'

describe Player do
  subject(:liv) { Player.new('Liv') }
  subject(:tim) { Player.new('Tim') }

  describe 'Name' do
    it 'returns the players name' do
      expect(tim.name).to eq 'Tim'
    end
  end

  describe 'hit_points' do
    it 'returns the hit points' do
      expect(tim.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end


  describe 'receive_damage' do
    it 'reduces the player hit points' do
      expect { tim.receive_damage }.to change { tim.hit_points }.by(-10)
    end
  end
end
