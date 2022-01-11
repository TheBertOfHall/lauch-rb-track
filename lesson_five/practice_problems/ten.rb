arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_arr = []

arr.each do |hash|
  hash.map do |key, value| 
    value +=1
    new_arr << {key => value}
    end
    
end
