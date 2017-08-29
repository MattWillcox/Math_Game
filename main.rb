require './question_generator'
require './players'
require './game_logic'
require './game_io'

question = Question_generator.new
question.createNewQuestion
currPlayer = 0
player1 = Player.new
player2 = Player.new
players = [player1, player2]
game = Game_logic.new
gameIO = Game_io.new

while !game.gameOver?(player1, player2) do
  gameIO.renderQuestion(currPlayer, question.opp1, question.opp2)
  answer = gets.chomp.to_i
  if(answer == question.answer)
    puts "Yes! You are correct"
    question.createNewQuestion
  else
    puts "No! you are not correct"
    question.createNewQuestion
    players[currPlayer].lives -= 1
    puts "P1: #{players[0].lives}/3 vs P2: #{players[1].lives}/3"
  end
  if !game.gameOver?(player1, player2)
    puts "----- NEW TURN -----"
  end
  currPlayer = (currPlayer == 0) ? currPlayer += 1 : currPlayer = 0
end
if player1.lives == 0
  puts "PLAYER 2 WINS WITH A SCORE OF #{players[1].lives}/3"
else
  puts "PLAYER 1 WINS WITH A SCORE OF #{players[0].lives}/3"
end
puts "----- GAME OVER -----"
puts "Good Bye!"


