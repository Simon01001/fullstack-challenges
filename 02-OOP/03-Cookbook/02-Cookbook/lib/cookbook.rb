require_relative "recipe"

class Cookbook
  def initialize
    @recipes = []
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index)
  end
end
