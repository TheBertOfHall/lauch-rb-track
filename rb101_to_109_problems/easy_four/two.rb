def short_long_short(word1, word2)
  if word1.size > word2.size
    word2.concat(word1, word2)
  elsif word2.size > word1.size
    word1.concat(word2, word1)
  end
end