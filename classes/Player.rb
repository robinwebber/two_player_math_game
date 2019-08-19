class Player
  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name # not sure I need this
  end

  def lose_a_life
    @lives -= 1
  end

end

p1 = Player.new("p1")

puts p1.lives
p1.lose_a_life
puts p1.lives

