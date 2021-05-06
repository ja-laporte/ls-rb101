# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
all_ages = []

ages.each_with_object([]) do |pair, array|
  all_ages << pair.last
end
ages_total_sum = all_ages.sum
p ages_total_sum
