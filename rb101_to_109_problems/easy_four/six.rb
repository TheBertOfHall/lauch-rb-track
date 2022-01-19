def multisum(num)
  arr = []
  (1..num).each do |value|
    if value % 3 == 0 || value % 5 == 0
      arr << value 
    end
  end
  arr.sum
end
