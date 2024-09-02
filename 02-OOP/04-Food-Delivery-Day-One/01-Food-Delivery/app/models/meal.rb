class Meal
  attr_writer :id
  attr_reader :id, :name, :price

  def initialize(arguments = {})
    @id = arguments[:id]
    @name = arguments[:name]
    @price = arguments[:price]
  end
end
pizza = Meal.new({ id: 1, name: "pizza", price: 12 })
p pizza
