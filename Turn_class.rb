class Turn
  attr_accessor :current_player
  attr_reader :all_players

  def initialize(player1, player2)
    @all_players = [player1, player2]
    @current_player = player1
  end

  def next_player
    if self.current_player == all_players.first()
      self.current_player = all_players.last()
      return self.current_player
    else 
      self.current_player = all_players.first()
      return self.current_player
    end
  end

end

turn1 = Turn.new("Eric", "Tron")
puts turn1.current_player
puts turn1.all_players
puts "=============="
puts turn1.next_player
puts turn1.next_player
puts turn1.next_player
puts turn1.next_player
puts turn1.next_player
puts turn1.next_player #eric should be here
