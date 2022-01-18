def prompt(word)
  puts "=> #{word}"
end

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage")
percentage = gets.chomp.to_f

tip = ( percentage / 100) * bill 
total = bill + tip 

prompt("The tip is $#{format("%.2f", tip)}")
prompt("The total is $#{format("%.2f", total)}")

