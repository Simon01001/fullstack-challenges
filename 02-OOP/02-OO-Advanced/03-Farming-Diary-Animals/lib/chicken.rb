require_relative 'animal'
class Chicken < Animal

  attr_reader :eggs

  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def feed!
    super()
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
