def prompt(word)
  puts "=> #{word}"
end

prompt("What is your name?")
user_name = gets.chomp 

if user_name.include?("!")
  user_name = user_name.chop
  puts "HELLO #{user_name.upcase!}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{user_name}"
end
