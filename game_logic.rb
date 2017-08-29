class Game_logic
  def initialize
  end
  def gameOver?(player1, player2)
    player1.lives == 0 or player2.lives == 0
  end
end