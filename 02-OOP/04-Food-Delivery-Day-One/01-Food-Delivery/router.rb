class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    puts "Welcome to the Food Delivery Service!"
    puts "                --                   "

    while @running
      puts "TODO"
      display
      #action = gets.chomp.to_i
      #print `clear`
      #route_action(action)
      stop
    end
  end

  private

  #def route_action(action)
    #case action
    #when 1 then @controller.list
    #when 2 then @controller.add
    #when 3 then @controller.remove
    #when 4 then stop
    #else
      #puts "Please press 1, 2, 3 or 4"
    #end
  #end

  def stop
    @running = false
  end

  def display
    puts ""
    puts "What do you want to do next?"
    puts "1 - "
    puts "2 - "
    puts "3 - "
    puts "4 - "
  end
end
