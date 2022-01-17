def reverse_sentence(string) 
  arr = string.split(' ')
  arr.each do |word| 
    if word.size >= 5
      word.reverse!
    end
  end

  puts arr.reverse!.join(' ')
end
