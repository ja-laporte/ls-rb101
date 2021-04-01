DEFAULTS = ['rock', 'paper', 'scissors', 'spock', 'lizard']
ALTERNATES = ['r', 'p', 'sc', 'sp', 'l']

WIN = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

CPU_CHOICE = DEFAULTS.sample

WELCOME = <<-WELCOME
Welcome to Rock, Paper, Scissors, Spock, Lizard!
   ------------------------------------------------
   
WELCOME

system('clear')

def prompt(message)
  puts("=> #{message}")
end

# Boolean == true if blank
def username_blank?(name)
  name.empty?
end

# Boolean == true to play
def game_start_valid?(choice)
  choice == 'y' || choice == 'yes' || choice == 'n' || choice == 'no'
end

def valid_options?(choice)
  picks = ['rock', 'paper', 'scissors', 'spock', 'lizard']
  picks.include?(choice)
end

def valid_alt_options?(choice)
  picks = ['r', 'p', 'sc', 'sp', 'l']
  picks.include?(choice)
end

def alt_choice_convert(choice)
  case choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'sp'
    'spock'
  when 'l'
    'lizard'
  end
end

def winner(first, second)
  WIN[first].include?(second)
end

def results(player, cpu)
  if winner(player, cpu)
    prompt("You win!")
  elsif winner(cpu, player)
    prompt("Computer wins!")
  else
    prompt("Tie!")
  end
end

prompt(WELCOME)
player = ''
play_response = ''

loop do
  prompt("Please enter a username:")
  player = gets.chomp

  break unless username_blank?(player)
  prompt("Username can't be left blank.")
end

prompt("Hi, #{player}!")
loop do
  player_pick = ''
  loop do
    prompt("Choose: #{DEFAULTS.join(', ')} or #{ALTERNATES.join(', ')}")
    player_pick = gets.chomp.downcase
    if valid_options?(player_pick)
      break
    elsif valid_alt_options?(player_pick)
      player_pick = alt_choice_convert(player_pick)
      break
    else
      prompt("Invalid input.")
    end
  end

  prompt("Player chose: #{player_pick} - Computer chose: #{CPU_CHOICE}")

  p results(player_pick, CPU_CHOICE)

  loop do
    prompt("Would you like to play again?")
    play_response = gets.chomp.downcase

    break if game_start_valid?(play_response)
    prompt("Invalid option. Enter y, yes, n, or no")
  end

  break if play_response == 'n' || play_response == 'no'
end
system("clear")
prompt('Thanks for playing! Good bye!!!')

# Create counter for matches
# Create loop for best out of 5 rounds
# create ultimate winner method
# display ultimate winner
