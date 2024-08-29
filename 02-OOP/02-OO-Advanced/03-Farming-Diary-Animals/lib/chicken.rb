require_relative 'animal'
class Chicken < Animal

  attr_reader :eggs

  def initialize(gender)
    @energy = 0
    @gender = gender
    @eggs = 0
  end

  def feed!
    @energy += 1
    if @gender == 'female'
      @eggs += 2
    elsif @gender == 'male'
      @eggs == @eggs
    end
  end

  def talk
    if @gender == 'female'
      return "cluck cluck"
    elsif @gender == 'male'
      return "cock-a-doodle-doo"
    end
  end
end
