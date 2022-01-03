def sum_even_number_row(row_number)
  rows = []
  row_length = 1
  start_integer = 2
  # steps 2 and 3 
  (1..row_number).each do |current_row_number| 
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  
   rows.last.sum # TODO: sum the final row and return the sum 
  
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  # steps 2-4
  loop do 
    row << current_integer
   current_integer += 2 
    break if row.length == row_length
  end 
  row 
end

# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68

 p sum_even_number_row(1) #== 2
# p sum_even_number_row(2) == 10
# p sum_even_number_row(4) == 68

# 1. Create an empty 'rows' array to contain all of the rows 
# 2. Create a 'row' array and add it to the overall 'rows' array 
# 3. Repeat step 2 until all necessary rows have been created 
#    - All rows have been created when the length of the 'rows' array is equal to the input Integer
# 4. Sum the final row
# 5. Return the sum 

# Calculating the start integer 
# Rule: First integer of row == Last integer of preceding row + 2 
# Algorithm: 
#  - Get the last row of the rows array 
#  - Get the last integer of that row 
#  - add 2 to the integer 



# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]

# 1. Create an empty 'row' array to contain the integer 
# 2. Add the starting Integer
# 3. Increment the starting integer by 2 to get the next interger in the sequence 
# 4. Repeat steps 2 and 3 until the array has reached the correct length 
# 5. return the row array 


# Start the loop 
#   -Add the start integer to the row
#   -Increment the start integer by 2 
#   -Break out of the loop 
