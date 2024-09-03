class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts "Welcome to the food delivery app!"
    while @running
      @current_user = @sessions_controller.login
      while @current_user
        if @current_user.manager?
          route_manager_action
        else
          route_rider_action
        end
      end
    end
  end

  def route_manager_action
    display_manager_menu
    action = gets.chomp.to_i
    print 'clear'
    manager_action(action)
  end

  def route_rider_action
    display_rider_menu
    action = gets.chomp.to_i
    print 'clear'
    rider_action(action)
  end

  def display_manager
    puts "------------------"
    puts "---MANAGER MENU---"
    puts "------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "7. Logout"
    puts "8. Exit"
    print "> "
  end

  def display_rider_menu
    puts "--------------------"
    puts "---- RIDER MENU ----"
    puts "--------------------"
    puts "1 - List all the meals"
    puts "2 - List all the customers"
    puts "3 - Logout"
    puts "4 - Stop and exit the program"
    print "> "
  end

  def manager_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 7 then logout!
    when 8 then stop!
    else puts "Please press 1, 2, 3, 4, 7 or 8"
    end
  end

  def rider_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @customers_controller.list
    when 3 then logout!
    when 4 then stop!
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def logout!
    @current_user = nil
  end

  def stop!
    logout!
    @running = false
  end
end
