require_relative 'animal'

class Cow < Animal
  attr_reader :milk

  def initialize
    @energy = 0
    @milk = 0
  end

  def feed!
    @milk += 2
    @energy += 1
  end

  def talk
    return "moo"
  end
end
