# frozen_string_literal: true

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

my_answer = <<~MYANSWER
  Because uniq without the bang(!) is not destructive, - puts numbers - displays the original array [1,2,2,3].
MYANSWER
puts my_answer
<<~SOLUTION
  The text explains: numbers.uniq returned a new Array object with unique elements, but it did not modify the numbers object. Further, the puts method automatically calls to_s on its argument, and that’s why you see the output.
  
  Additional note: had the last line been p numbers instead, the output would have been [1, 2, 2, 3] because the p method automatically calls inspect on its argument, which gives a different formatting on the output. Furthermore, we could have also done puts numbers.inspect and the output would have been the same as using the p method.
SOLUTION
