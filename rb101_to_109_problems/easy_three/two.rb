def prompt(word)
  puts "==> #{word}"
end

arr = []

prompt("Enter the first number:")
arr << gets.chomp.to_i
prompt("Enter the second number:")
arr << gets.chomp.to_i

prompt("#{arr[0]} + #{arr[1]} = #{arr.sum}")
prompt("#{arr[0]} - #{arr[1]} = #{arr.inject(:-)}")
prompt("#{arr[0]} * #{arr[1]} = #{arr.inject(:*)}")
prompt("#{arr[0]} / #{arr[1]} = #{arr.inject(:/)}")
prompt("#{arr[0]} % #{arr[1]} = #{arr.inject(:%)}")
prompt("#{arr[0]} ** #{arr[1]} = #{arr.inject(:**)}")
