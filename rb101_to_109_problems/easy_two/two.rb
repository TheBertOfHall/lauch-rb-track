def prompt(word)
  puts "=> #{word}"
end

prompt("Enter the length of the room in meters:")
length = gets.chomp.to_i

prompt("Enter the width of the room in meters: ")
width = gets.chomp.to_i

area = length * width 
area_sqr_feet = area * 10.7639

prompt("The area of the room is #{area} square meters (#{area_sqr_feet} square feet)")