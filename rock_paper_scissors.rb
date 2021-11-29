VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_results (player, computer)
  if (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
      prompt("You Won!")
  elsif (player == 'rock' && computer == 'paper') ||
          (player == 'paper' && computer == 'scissors') ||
          (player == 'scissors' && computer == 'rock')
      prompt("You lost!")
  else
    prompt("It's a tie")
  end

end

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