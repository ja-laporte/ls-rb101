def prompt(message)
  puts("=> #{message}")
end

def valid_number?(number)
  number.to_i.to_s == number && number.to_i >= 0
end

def valid_operation?(operator)
  operator == '1' || operator == '2' || operator == '3' || operator == '4'
end

def valid_response?(response)
  response == 'y' || response == 'yes' || response == 'n' || response == 'no'
end

def operation_to_message(op)
  case op
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

operator_prompt = <<-MSG
  Enter an operation:
  Press (1) to Add
  Press (2) to Subtract
  Press (3) to Multiply
  Press (4) to Divide
MSG

prompt('Welcome to Calculator.')

response = nil
loop do
  num1 = nil
  loop do
    prompt('Enter the first number:')
    num1 = gets.chomp

    break if valid_number?(num1)
    prompt("Invalid input. Enter a positive number.")
  end

  num2 = nil
  loop do
    prompt('Enter the second number')
    num2 = gets.chomp

    break if valid_number?(num2)
    prompt("Invalid input. Enter a positive number.")
  end

  prompt(operator_prompt)
  operation = nil
  loop do
    operation = gets.chomp

    break if valid_operation?(operation)
    prompt('Invalid operation selected.')
  end

  result = case operation
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           else
             'Invalid Operation'
           end
  prompt("#{operation_to_message(operation)} numbers...")
  prompt("Answer is #{result}")

  loop do
    prompt("Do you want to perform another calculation?")
    response = gets.chomp.downcase

    break if valid_response?(response)
    prompt("Please enter (y,n).")
  end

  break if response == 'n' || response == 'no'
end

prompt("Thank you for using calculator. Goodbye!")
