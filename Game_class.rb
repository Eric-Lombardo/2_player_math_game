class Game
  attr_accessor :player1, :player2, :turn

  def initialize
    @player1 = Player.new("Rinzler")
    @player2 = Player.new("Tron")
    @turn = Turn.new(player1, player2)
  end

  def any_player_dead?
    self.player1.is_player_dead? || self.player2.is_player_dead? ? true : false
  end

  def play
    puts "#{player1.name} and #{player2.name} have joined!"

    while self.any_player_dead? == false do
      if Question.new(turn).math_problem == false
        turn.current_player.remove_life_point
      end

      puts "#{player1.name}: #{player1.life_points}/3 vs #{player2.name}: #{player2.life_points}/3"
      
      turn.current_player = turn.next_player

      if self.any_player_dead? == false
        puts "=== Next Turn ==="
      else 
        puts "#{turn.current_player.name} has won with a score of #{turn.current_player.life_points}/3"
        puts "#{turn.current_player.name} has derezzed #{turn.next_player.name}"
        puts "=== Game Over ==="
        puts "Play Again?"
      end
    end
  end
end