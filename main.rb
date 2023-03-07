require './Game.rb'
require './Question'
require './Player'
  
game = Game.new

def game_loop(game)

  question = Question.new(game.current_player)

  # Start game
  game.start_game(question.sum)

  # Verify answer
  question.correct?(game.player_answer, game.current_player)

  # Display updated score
  game.show_score(game.player1, game.player2)

  # Check for winner, start new turn if applicable
  unless (game.game_over?(game.player1, game.player2)) 
   game_loop(game)
  else 
   puts "----- GAME OVER -----"
   puts "Good bye!"
  end

end

game_loop(game)
