class View

  def ask_user_for_description(info)
    puts "#{info}"
    puts "What task do you want to add?"
    gets.chomp
  end

  def ask_user_for_index
    gets.chomp.to_i - 1
  end

  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} #{recipe.description}"
    end
  end
end
