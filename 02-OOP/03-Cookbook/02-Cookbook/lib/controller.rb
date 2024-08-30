require_relative "recipe"
require_relative "view"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def add
    name = @view.ask_user_for_description("name")
    description = @view.ask_user_for_description("description")
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  def list
    recipes = @cookbook.all
    @view.display_list(recipes)
  end

  def remove
    index = @view.ask_user_for_index
    recipe = @cookbook.find(index)
    recipe.remove
  end
end
