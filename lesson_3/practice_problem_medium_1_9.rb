# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo)
# My answer:
# This would return "yes" <- Incorrect
# The foo method returns "yes", so when passed into the bar method, the paramater is changed to the return value of
# "yes" resulting in the ternary operator evaluating to false, which in turn returns "no".
