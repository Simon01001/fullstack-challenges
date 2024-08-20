require_relative "compute_name"

# TODO: ask for the first name
first_name = gets.chomp
# TODO: ask for the middle name
middle_name = gets.chomp
# TODO: ask for the last name
last_name = gets.chomp
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
p "Hello, #{first_name} #{middle_name} #{last_name}"
