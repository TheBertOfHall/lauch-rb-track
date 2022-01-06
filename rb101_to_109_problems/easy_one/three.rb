def digit_list(int)
  list = []
  arr = int.to_s.split("")
  arr.map{|num| list << num.to_i }
  p list 

end

digit_list(7)