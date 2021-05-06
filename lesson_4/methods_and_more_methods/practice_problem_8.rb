# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# ---My Solution---
# Ruby documentation Array#take states that take will return a new Array containing the first n element, where n is a non-negative integer; does not modify self.

# take is not destructive.

# ---Correct Solution---

# By reading the docs and testing the method in irb, we're able to determine 
# that Array#take selects a specified number of elements from an array. 
# We're also able to verify that it isn't a destructive method.