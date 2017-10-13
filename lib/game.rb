require_relative 'player'

class Game
  attr_reader :current_turn, :defender

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @defender = player2
  end

  def player1
    @players.first
    end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
    @defender = opponent_of(defender)
  end

  private

  def opponent_of(the_player)
    @players.reject { |player| player == the_player }.first
  end
end
