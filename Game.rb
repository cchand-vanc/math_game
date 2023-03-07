class Game
  attr_accessor :current_player, :player_answer, :player1, :player2

def initialize
  @player1 = Player.new("Player 1")
  @player2 = Player.new("Player 2")
  @current_player = @player1
end

def start_game(sum)
  # while @player1.lives > 0 && @player2.lives > 0 do
  puts "#{current_player.name}: What does #{sum} equal?"
  @player_answer = gets.chomp.to_i
end

def show_score(player1, player2)
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
end

def swap_player(player1, player2)
  if (@current_player == @player1)
    @current_player = @player2
  elsif (@current_player == @player2)
    @current_player = @player1
  end
end

def game_over?(player1, player2)
  winner = false

  if player1.lives == 0
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
    winner = true

  elsif player2.lives == 0
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
    winner = true
  
  else  
    puts "----- NEW TURN -----"
    swap_player(player1, player2)
  end
  winner
end


end