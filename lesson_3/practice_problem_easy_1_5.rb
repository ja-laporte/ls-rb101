# Programmatically determine if 42 lies between 10 and 100.

def number_between_10_and_100?(num)
  (10..100).include?(num)
end

puts number_between_10_and_100?(42)

# The solution provided uses the cover? method
