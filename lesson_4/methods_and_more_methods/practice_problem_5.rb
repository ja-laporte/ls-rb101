# What does shift do in the following code? How can we find out?

  hash = { a: 'ant', b: 'bear' }
  hash.shift

# ---My Solution---
# Reading Ruby Documenatation on Hash#shift explains that shift will return a 2 element array containing the first key-value pair
# => [a:, 'ant']

# ---Correct Solution---
# shift destructively removes the first key-value pair in hash and returns it 
# as a two-item array. If we didn't already know how shift worked, we could 
# easily learn by checking the docs for Hash#shift. The description for this
# method confirms our understanding:

#   Removes a key-value pair from hsh and returns it as the two-item array [ key, value ], or the hash’s default value if the hash is empty.
