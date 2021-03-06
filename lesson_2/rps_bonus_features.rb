DEFAULTS = ['rock', 'paper', 'scissors', 'spock', 'lizard']
ALTERNATES = ['r', 'p', 'sc', 'sp', 'l']
BEGIN_GAME_RESPONSE = %w[y yes n no]

WIN = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

WELCOME = <<-WELCOME
Welcome to Rock, Paper, Scissors, Spock, Lizard!
   ------------------------------------------------
WELCOME
system('clear')

def prompt(message)
  puts("=> #{message}")
end

def username_blank?(name)
  name.empty?
end

def game_start_valid?(choice)
  BEGIN_GAME_RESPONSE.include?(choice)
end

def valid_options?(choice)
  DEFAULTS.include?(choice)
end

def valid_alt_options?(choice)
  ALTERNATES.include?(choice)
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

def show_results(player, cpu)
  if winner(player, cpu)
    prompt("You win!")
  elsif winner(cpu, player)
    prompt("Computer wins!")
  else
    prompt("Tie!")
  end
end

def score_count(player, computer, score)
  if winner(player, computer)
    score[:player] += 1
  elsif winner(computer, player)
    score[:cpu] += 1
  end
end

def display_champion(score)
  if score[:player] == 5
    prompt("You're a Wizard, Harry! Way to go CHAMP!")
  elsif score[:cpu] == 5
    prompt('Beep, Boop. CPU is the Champion')
  end
end

def score_reset(score)
  score[:player] = 0
  score[:cpu] = 0
end

score = {
  player: 0,
  cpu: 0
}

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
  loop do
    player_pick = ''
    cpu_choice = DEFAULTS.sample
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
    system("clear")

    prompt("Player chose: #{player_pick} - Computer chose: #{cpu_choice}")
    show_results(player_pick, cpu_choice)
    score_count(player_pick, cpu_choice, score)
    prompt("Score \n You: #{score[:player]} \n CPU: #{score[:cpu]}")
    break if score[:player] == 5 || score[:cpu] == 5
  end
  system("clear")
  display_champion(score)
  score_reset(score)

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
