# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 1

# loop do
#   count += 1
# end

# ---My solution---

loop do 
  count.even? ? puts("#{count} is even") : puts("#{count} is odd")
  count += 1
  break if count > 5
end