def prompt(word)
  puts "==> #{word}"
end

prompt("Please write a word or multiple words: ")
user_input = gets.chomp

prompt("There are #{user_input.gsub(/ /, '').size} characters in \"#{user_input}\".")