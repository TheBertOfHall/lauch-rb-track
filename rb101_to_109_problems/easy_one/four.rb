def count_occurences(arr)
  arr.uniq.each do |word|
    puts "#{word} => #{arr.count(word)}"
    end
  end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
]

count_occurences(vehicles)