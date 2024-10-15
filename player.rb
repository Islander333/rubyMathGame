#Player class will have objects for the two players, their state and behavior
#state: name and lives 
#behavior: methods that change state.
#methods: initialize(name) constructor to set players name and initialize lives at 3
  #lose_life method to reduce players lives
    #alive? method to check if player still has lives

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
end

def alive?
  @lives > 0
  end

end