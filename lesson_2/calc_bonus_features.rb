# better integer validation
# number validation
# configure operation_to_meassage method to accept code after case statement
# extract messages to a config file
# internationalize the messages

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to Calculator! Enter your name:')
name = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt('Please enter a valid name...')
  else
    break
  end
end

prompt("Hello, #{name}!")

loop do
  number1 = ''
  number2 = ''

  loop do
    prompt("What's the first number?")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number... Try again: ")
    end
  end

  loop do
    prompt('What is the second number?')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number... Try again: ")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)

  operation = ''
  loop do
    operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt('Must choose 1, 2, 3 or 4')
    end
  end
  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}!")
  prompt('Perform another calculation? (Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt("Now exiting... Thank you for using Calc, #{name}!")
