arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr = []

arr.map do |sub_array| 
 new_arr << sub_array.select {|number| number.to_i % 3 == 0 }
 
  
end
 p new_arr