# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# ---My Solution---
# arr[0] is now 4 so arr = [4,[5,8]]
# arr[1][0] is [5] and is subtracting 2, which a is pointing to, resulting in arr = [4,[3,8]]

# The value of a = 2
# The value of b = [3,8]