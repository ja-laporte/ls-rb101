# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# ---My Solution---

# input: array of sub-arrays of strings and integers
# output: new array that has the same structure as original array, ordered alphabetically or numerically

arr2 = arr.map do |sub_arr|
  sub_arr.sort { |a,b| b <=> a }
end

p arr2