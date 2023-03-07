class Question 
  attr_reader :sum, :answer

  def initialize(current_player)
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)

    @sum =  "#{@firstNum} + #{@secondNum}"
    @answer = @firstNum + @secondNum
  end


  def correct?(player_answer, current_player)
    if (@answer == player_answer)
      puts "Correct! Good job!"
    else 
      puts "Obviously not. Lose a life!"
      current_player.lose_life
    end
  end

end
