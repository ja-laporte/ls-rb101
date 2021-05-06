# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# ---My Solution---
# The select method will return a new collection given the truthiness of the block,
# in this case, all elements are now 'hi': => ['hi', 'hi', 'hi']

# ---Correct Solution---
# The select method will return a new collection given the truthiness of the block.
# Because it will always return 'hi', and it is a truthy value, it will return a new array
# containing all the elements from the original array.