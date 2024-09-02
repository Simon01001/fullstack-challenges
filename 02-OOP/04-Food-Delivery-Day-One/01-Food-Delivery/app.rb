require_relative 'app/repositories/meal_repository.rb'
require_relative 'app/controllers/meals_controller.rb'
require_relative 'router.rb'

meal_repository = MealRepository
meals_controller = MealsController.new(meal_repository)
router = Router.new(meals_controller)


router.run
