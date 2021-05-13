# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.shift(1)
end

# ---My Solution---
# While iterating, the first item in the array is printed, then shift removes the first item. The next iteration increments the index to 1 and outputs the item at that index position (3). shift then removes the first item. The next iteration of each increments the index to 2. Because there is nothing at position 2 the resulting output:

# => 1, 3

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# ---My Solution---
# => 1, 3 - Is incorrect

# ---Correct---
# => 1, 2