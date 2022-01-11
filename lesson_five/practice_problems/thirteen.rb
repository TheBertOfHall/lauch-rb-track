arr = [[1, 6, 9], [1, 4, 9], [1, 6, 7], [1, 8, 3]]


arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
