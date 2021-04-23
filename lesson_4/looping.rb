arr = [2,3,4,6,8,9]
count = 0

loop do
  arr[count] += 1
  count += 1
  break if count == arr.size
end  

p arr