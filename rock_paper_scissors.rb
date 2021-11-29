VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
      prompt("You Won!")
  elsif win?(computer, player)
      prompt("You lost!")
  else
    prompt("It's a tie")
  end

end

loop do
  choice = ''
  loop do 
    prompt("Choose one: #{VALID_CHOICES.join (', ')}")
    choice = gets.chomp 
    
    if VALID_CHOICES.include?(choice)
      break
    else 
      prompt("That's not a valid choice.")
    end
    
  end
  computer_choice = VALID_CHOICES.sample
  
  display_results(choice, computer_choice)
  
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
end

prompt("Thank you for playing!")