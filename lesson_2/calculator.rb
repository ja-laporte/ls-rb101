puts('Welcome to Calculator.')
puts('Enter the first number:')
num1 = gets.chomp.to_i
puts('Enter the second number')
num2 = gets.chomp.to_i
puts('Enter an opertation. Choose 1)Add 2)Subtract 3)Multiply 4)Divide')
opertation = gets.chomp

result = case opertation
         when '1'
           num1 + num2
         when '2'
           num1 - num2
         when '3'
           num1 * num2
         when '4'
           num1.to_f / num2.to_f
         else
           'Invalid Operation'
         end

puts("Answer is #{result}")
