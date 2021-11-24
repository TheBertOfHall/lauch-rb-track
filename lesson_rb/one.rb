# ask the user for two numbers
# ask the uesr for an operation to perform 
# perform the operation on the two numbers 
# output the result 

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0 
end
 
prompt("Welcome to calculator! Enter your name please:")
name = ''
loop do 
  name = gets.chomp
  
  if name.empty?
    prompt('Make sure to use a valid name')
  else 
    break 
  end
end
  
  prompt("Hi #{name}")

loop do #main loop
  prompt("Enter two numbers please")
  number_one = nil
  number_two = nil 
  
  loop do 
    prompt("What is the first number")
    number_one = gets.chomp.to_i
    
        if valid_number?(number_one)
          break
        else
          prompt("The number is not a valid number")
        end
      end
      
  loop do 
    prompt("What is the second number")
    number_two = gets.chomp.to_i
    
        if valid_number?(number_two)
          break
        else
            prompt("The number is not a valid number")
        end
      end
  
  operator_prompt = <<-MSG # this is how to enter a multi-line string
    What would you like to do with these numbers?
    Add 
    Substract 
    Multiply
    Divide
  MSG
  prompt(operator_prompt)
  
  user_action = ''
  loop do  
  user_action = gets.chomp.downcase
  
  if %w(add substract multiply divide).include?(user_action) # %w is an array
    prompt("Adding the two numbers") if user_action == 'add'
    prompt("Substracting the two numbers") if user_action == 'substract'
    prompt("Multiplying the two numbers") if user_action == 'multiply'
    prompt("Dividing the two numbers") if user_action == 'divide'
    break
  else 
    prompt('You must choose between add, substract, multiply and divide')
  end
end



  result = case user_action 
            when 'add'
              number_one + number_two
            when 'substract'
              number_one - number_two
            when 'multiply'
              number_one * number_two
            when 'divide'
              number_one.to_f / number_two.to_f
              
  end
  
  prompt("The result is #{result}")
  
  prompt("Would you like to perform another operation (Y/N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!!")






