# ask user for two numbers
# ask user for type of operation
# perform operation
# output the result

puts('Welcome to Calculator!')
puts("What's the first number?")

number1 = gets.chomp
puts('What is the second number?')
number2 = gets.chomp

puts('What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide')
operation = gets.chomp

if operation == '1'
  result = number1.to_i + number2.to_i
elsif operation == '2'
  result = number1.to_i - number2.to_i
elsif operation == '3'
  result = number1.to_i * number2.to_i
elsif operation == '4'
  result = number1.to_f / number2
else
  puts('Invalid operation.')
end

puts("The answer is #{result}!")
