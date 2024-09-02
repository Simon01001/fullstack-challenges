#require_relative 'app/repositories/meal_repository.rb'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
  end

  def add
    meal = Meal.new([:name], [:price])
    @meal_repository.create(meal)
  end

  def list
    meals = @meals.all
    @view.display_list(meals)
  end
end
