# frozen_string_literal: true

# Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit
# variable. What's wrong with the code?

# This variable is being used for instruction and useless assignment is needed to understand the problem.
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(2, 1)
puts "result is #{result}"

# How would you fix this so that it works?
# The parameter for the limit variable was not defined in the method definition in order for use to be able to use it,
# and subsequently, not called.
# Add the paramter in the method definition, and pass the argument.
