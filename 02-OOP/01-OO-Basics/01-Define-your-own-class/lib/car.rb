class Car
  attr_reader :engine_started
  def initialize(model, brand, km)
    @model = model
    @brand = brand
    @km = km
    @engine_started = false
  end
end
