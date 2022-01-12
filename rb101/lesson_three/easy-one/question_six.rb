# show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

words_before = "Four score and"

puts "#{words_before} #{famous_words}"

puts famous_words.prepend(words_before)