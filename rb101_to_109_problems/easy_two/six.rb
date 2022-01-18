value = 0
1..99.times do |i|
  value += 1 
  if value.even?
    puts "#{value}"
  end
end