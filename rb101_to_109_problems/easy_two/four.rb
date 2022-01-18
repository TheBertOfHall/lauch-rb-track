def prompt(word)
  puts "=> #{word}"
end

t = Time.now 


prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
wanted_retiring_age = gets.chomp.to_i

calculated_retiring_age = wanted_retiring_age - age 
retiring_year = t.year + calculated_retiring_age

prompt("It's #{t.year}. You will retire in #{retiring_year}.")
prompt("You only have #{calculated_retiring_age} years of work to go!")




