def sum(number)
  total = 0
  arr = number.to_s.split('')
  arr.each {|value| total += value.to_i} 
  puts total
end