# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# ---My Solution---
# Because the block contains puts, puts will always return nil, so the return value is nil
# ** Of special consideration **
# I failed to actually look at the documentation, and made an assumption, which proved to be incorrect...
# LOOK UP DOCUMENTATION!

# ---Correct Solution---
# => [1, 2, 3]

# Since puts always returns nil, you might think that no values would be selected and an empty array would be returned.
# The important thing to be aware of here is how reject treats the return value of the block. reject returns a new
# array containing items where the block's return value is "falsey". In other words, if the return value was false
# or nil the element would be selected.