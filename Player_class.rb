class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 3
  end

  def remove_life_point
    self.life_points -= 1
  end

end


tron = Player.new("Tron")
puts tron.life_points
tron.remove_life_point
puts tron.life_points
tron.remove_life_point
puts tron.life_points
tron.remove_life_point
puts tron.life_points