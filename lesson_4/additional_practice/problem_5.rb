# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# ---My Solution---
p flintstones.index { |name_starts_with| name_starts_with.start_with? 'Be' }