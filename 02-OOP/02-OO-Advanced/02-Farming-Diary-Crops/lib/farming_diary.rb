# DO NOT remove the two lines below, needed for display purposes
require_relative "../spec/helper/board"

require_relative "corn"
require_relative "rice"
require_relative "crop"


puts "\n\n📝 Day One: Corn"
# 1. Instantiate a corn crop
crop = Corn.new

puts "The corn crop produced #{crop.grains} grains"

# 2. Water the corn crop
crop.water!
# 3. Replace 'TODO' with the value of `grains` for your crop
puts "The corn crop produced #{crop.grains} grains"
# 4. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The corn crop is #{crop.ripe?}"



puts "\n\n📝 Day Two: Rice"
# 1. Instantiate a rice crop
crops = Rice.new
# 2. Water the rice crop
crops.water!
# 3. Transplant the rice crop
crops.transplant!
# 4. Replace 'TODO' with the value of `grains` for your crop
puts "The rice crop produced #{crops.grains} grains"
# 5. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The rice crop is #{crops.ripe?}"


# DO NOT remove the two lines below, needed for display purposes
Board.new.display
