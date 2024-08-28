class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
    @dead = false
  end

  def dead?
    @dead
  end

  def age
    @age
  end

  def height
    @height
  end

  def fruits
    @fruits
  end

  def one_year_passes!
    may_die!
    @age += 1
    @height += 1 if @age < 11
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    elsif @age >= 15
      @fruits = 0
    end
  end

  def may_die!
    if @age == 100
      @dead = true
    elsif @age > 50
      @dead = (@age >= rand(51..100))
    end
  end

  def pick_a_fruit!
    if @fruits > 0
      @fruits -= 1
    else
      puts "no fruit to pick"
    end
  end
end
