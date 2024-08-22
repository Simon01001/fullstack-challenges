require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-3.1.2/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-3.1.2/String.html#method-i-chomp

puts "enter students name"
students = []
while true
  input = gets.chomp
  break if input.empty?
  students << input
end



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
sorted_students = wagon_sort(students)
puts "Congratulations! Your Wagon has #{sorted_students.length} student#{sorted_students.length > 1 ? "s" : ""}:"
if sorted_students.length == 1
  puts "#{sorted_students.join}"
else
  and_students = sorted_students[-2..]
  comma_students = sorted_students - and_students
  puts "#{comma_students.join(', ')}, #{and_students.join(' and ')}"
end
