require_relative 'car'
second_hand_panda = Car.new("Panda 4x4", "Renault", 30000)
new_testarossa = Car.new("Testarossa", "Ferrari", 0)
my_car = Car.new("Clio", "Renault", 140000)
def engine_started
  engine_started = true
end
my_car.engine_started
p my_car
