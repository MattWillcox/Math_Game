class Question_generator
  attr_accessor :opp1, :opp2, :answer

  def createNewQuestion
    @opp1 = 1 + rand(10)
    @opp2 = 1 + rand(10)
    @answer = @opp1 + @opp2
  end
end