# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# ---My Solution---
# The Ruby doc explains that pop will remove and return trailing elements, 
# in this case that means pop will return the string 'caterpillar', which 
# can than be used to call #size on it, which will return the strings size,
# the integer 11

# ---Correct Solution---
# => 11

# There are a couple things going on here. First, pop is being called on the
# array. pop destructively removes the last element from the calling array 
# and returns it. Second, size is being called on the return value by pop. 
# Once we realize that size is evaluating the return value of pop 
# (which is "caterpillar") then the final return value of 11 should make sense.