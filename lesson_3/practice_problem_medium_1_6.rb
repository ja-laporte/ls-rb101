# I'm leaving the useless variable assingments as they are. They're only being used for illustrative purposes for the problem.

# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# My answer is that this will output 34 because answer is outside of the method scope, so it remains unchanged.
