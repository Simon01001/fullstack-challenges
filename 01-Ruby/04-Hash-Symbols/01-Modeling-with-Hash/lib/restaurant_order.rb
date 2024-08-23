def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  sum = 0
  food = {
  burger: {
    "Hamburger" => 250,
    "Cheese Burger" => 300,
    "Veggie Burger" => 540,
    "Vegan Burger" =>	350
    },
  side: {
    "Sweet Potatoes" =>	230,
    "Salad" => 15,
  },
  beverage: {
    "Iced Tea"	=> 70,
    "Lemonade"	=> 90
  }
  }
  sum += food[:burger][burger] += food[:side][side] += food[:beverage][beverage]
  return sum
end
