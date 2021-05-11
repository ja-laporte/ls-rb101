# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# ---My Solution---
flintstones.each { |first_three| puts first_three[0, 3]}
# I misread the directions, and the #each method does not amend the array...

# ---Solution---
# flintstones.map! { |first_three| first_three[0, 3] }