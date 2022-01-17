def stringy(number)
  arr = []
  if number == 0
    arr << 1
  else
    count = 0
    until count == number do
      if count.even?
        arr << 1
        count += 1
      elsif count.odd?
        arr << 0
        count += 1
      end
    end
  end
  puts arr.join('')
end