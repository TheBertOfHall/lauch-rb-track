def prompt(message)
  puts "=> #{message}"
end

def float?(input)
  input.to_f.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end


prompt("Welcome to mortage calculator!")

loan_amount = nil 

loop do # checking if loan amount is valid int or float 
  prompt("Enter your loan amount")
  loan_amount = gets.chomp
  
    if float?(loan_amount) == true
      loan_amount = loan_amount.to_f 
      break
    elsif integer?(loan_amount) == true 
      loan_amount = loan_amount.to_i
      break
    else
      prompt("You must enter a valid number")
    end 
  end 
  
  user_annual_percentage = nil
  annual_percentage = nil 
  
  loop do # APR loop 
    prompt('Enter the Annual Percentag Rate (APR) please')
    user_annual_percentage = gets.chomp
      if float?(user_annual_percentage) == true
        annual_percentage = user_annual_percentage.to_f / 100
        break
      elsif integer?(user_annual_percentage) == true 
        annual_percentage = user_annual_percentage.to_f / 100
        break
      else 
        prompt("You must enter a valid number")
      end 
  end 

  loan_duration_in_years = nil 
  loan_duration_in_months = nil
  
  loop do 
    prompt('Would you like to enter the loan duration in months or years')
    prompt("'M' for months 'Y' for years")
    user_input_preference = gets.chomp.downcase
      if user_input_preference == 'y'
        prompt("Enter loan duration in years")
        loan_duration_in_years = gets.chomp.to_i
        loan_duration_in_months = loan_duration_in_years * 12
        break
      elsif user_input_preference == 'm'
        prompt("Enter loan duration in months")
        loan_duration_in_months = gets.chomp.to_i
        break
      else
        prompt("You must enter 'M' or 'Y'")
      end
  end 
  
 
  monthly_interest_rate = annual_percentage.to_f / 12
  
  
  
  monthly_payment = loan_amount.to_f * (monthly_interest_rate/ (1 - (1 + monthly_interest_rate)**                                    (-loan_duration_in_months)))

  prompt("With a $#{loan_amount} at #{user_annual_percentage}% APR over #{loan_duration_in_years} years")

   prompt("Your monthly payment would be: $#{format('%.2f', monthly_payment)}")
  