require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/repositories/employee_repository'

require_relative 'app/controllers/meals_controller'
require_relative 'app/controllers/customers_controller'
require_relative 'app/controllers/sessions_controller'

require_relative 'router'

meals_csv_file = File.join(__dir__, 'data/meals.csv')
customers_csv_file = File.join(__dir__, 'data/customers.csv')
employees_csv_file = File.join(__dir__, 'data/employees.csv')
#orders_csv_file = File.join(__dir__, 'data/orders.csv')

meal_repository = MealRepository.new(meals_csv_file)
customer_repository = CustomerRepository.new(customers_csv_file)
employee_repository = EmployeeRepository.new(employees_csv_file)
#order_repository = OrderRepository.new(orders_csv_file)

meals_controller = MealsController.new(meal_repository)
customers_controller = CustomersController.new(customer_repository)
sessions_controller = SessionsController.new(employee_repository)
#orders_controller = OrdersControllers.new(order_repository)

router = Router.new(meals_controller, customers_controller, sessions_controller) #orders_controller)

router.run
