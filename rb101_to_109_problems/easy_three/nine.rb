def palindrome?(word)
  word.downcase!.delete!('^a-z0-9')
  if word == word.reverse
     true
  else 
     false
  end
end