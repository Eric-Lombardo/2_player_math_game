class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new("Rinzler")
    @player2 = Player.new("Tron")
  end

  def any_player_dead?
    self.player1.is_player_dead? || self.player2.is_player_dead? ? true : false
  end

  def play
    puts "#{player1.name} and #{player2.name} have joined!"
  end
end