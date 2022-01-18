def prompt(word)
  puts ">> #{word}"
end

prompt("Please enter an integer greater than 0: ")
user_int = gets.chomp.to_i 

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp.downcase

numbers = (1..user_int).map 

if operation == 's'
  puts "The sum of integers between 1 and #{user_int} is #{numbers.sum}"
elsif operation == 'p'
  puts "The product of integers between 1 and #{user_int} is #{numbers.inject(:*)}"
end