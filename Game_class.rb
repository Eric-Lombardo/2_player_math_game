class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new("Rinzler")
    @player2 = Player.new("Tron")
  end

  def any_player_dead?
    self.player1.is_player_dead? || self.player2.is_player_dead? ? true : false
  end

  def play
    puts "#{player1.name} and #{player2.name} have joined!"

    # turn1 = Turn.new(player1.name, player2.name)
    puts Question.new(player1.name, player2.name).math_problem
    # puts "#{turn1.current_player}: #{Question.new.math_problem}"
  end
end