class Recipe
  attr_reader :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
end

recipe = Recipe.new("chocolate cake", "a delicious chocolate cake")
p recipe
