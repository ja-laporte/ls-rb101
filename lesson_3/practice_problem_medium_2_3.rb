# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# My Answer:
# I believe the string will output "pumpkins" because the method doesn't mutate the string, while the
# << inside of the method does resulting in the output ["pumpkins", "rutabaga"]

# Correct answer:
# The parameter in the method definition for the string creates a new object ("pumpkinsrutabaga")
# so the paramater (a_string_param) no longer points to the same object that my_string points to.
# As for the array, the << appends the the value of my_array to the paramter an_array_param,
# resulting in the the variables pointing to the same object, albiet different names.
# The end result is that my_string continues to point to its original object, outside the method scope
# and my_array, while pointing to the same object, appends the value given from within the method scope.
