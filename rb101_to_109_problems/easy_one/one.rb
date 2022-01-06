def repeat(word, repeating_times)
  count = 0
  loop do 
    puts word
    count += 1
    break if count == repeating_times
  end

end


repeat('hello', 3)