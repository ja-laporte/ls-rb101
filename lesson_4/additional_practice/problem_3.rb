# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

# ---My Solution---
ages.reject! { |key, value| value > 100 }
p ages