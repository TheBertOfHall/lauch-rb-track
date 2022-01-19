def palindromic_number?(number)
  if number.to_s == number.to_s.reverse
     true
  else 
     false
  end
end
