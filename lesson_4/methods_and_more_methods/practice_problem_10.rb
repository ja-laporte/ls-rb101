# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# ---My Solution---
# I think the return value is => [[1], [2,3]].

# My reasoning is because map iterates through and checks the block.
# 1 is not greater than one, so the else condition is checked.

# This returns 1 to a new array. I then think that because the next two
# iterations are true, they are added to the new array as an array.

# ---Correct Solution---
# => [1, nil, nil] 

# We can determine the block's return value by looking at the return value of 
# the last statement evaluated within the block. In this case it's a bit tricky
# because of the if statement. For the first element, the if condition evaluates
# to false, which means num is the block's return value for that iteration. For 
# the rest of the elements in the array, num > 1 evaluates to true, which means
# puts num is the last statement evaluated, which in turn, means that the block's
# return value is nil for those iterations.

# Therefore, the return value of map is:

# => [1, nil, nil]

# ---Knowledge Gap---
# I didn't take time to remember that the if condition has a return value of puts num. This always evaluates to nil. Each iteration would then be a single value of nil for that element, resulting in the [1, nil, nil]