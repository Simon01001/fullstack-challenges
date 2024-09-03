class Meal
  attr_accessor :id
  attr_reader :name, :price

  def initialize(arguments = {})
    @id = arguments[:id]
    @name = arguments[:name]
    @price = arguments[:price]
  end
end
