VALID_CHOICES = %w(rock paper scissors)
WELCOME = "Welcome to the Rock, Paper, Scissors Game!!!"
system('clear')

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("YOU WIN!!!")
  elsif win?(computer, player)
    prompt("YOU LOSE!!!")
  else
    prompt("TIE!!!")
  end
end

prompt(WELCOME)
puts('')
loop do
  player = ''
  loop do
    prompt("Choose: #{VALID_CHOICES.join(', ')}")
    player = gets.chomp.downcase

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("Invalid option.")
    end
  end

  computer = VALID_CHOICES.sample
  prompt("You chose: #{player}; Computer chose: #{computer}")

  display_results(player, computer)

  prompt("Do you want to play again?")
  answer = gets.chomp.downcase
  system('clear')
  break unless answer.start_with?('y')
end

prompt("Thank you for playing. Goodbye!!!")
