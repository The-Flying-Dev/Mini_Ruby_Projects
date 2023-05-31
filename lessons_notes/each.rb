# Collection - In Ruby it is an Array or Hash 
# Iteration -  A single pass over an element 
# Block - The code that runs for every element in the Array 
# Block Variable - For each Iteration this variable holds the current element that is being iterated over 

# Accumulator / Aggregator / Placeholder - Container to store and access the new collection 




numbers = [1,2,3,4,5]

# Can you create a new array with only the odd numbers?
# Can you create a new array with only the even numbers?
# Can you print out each number doubled?
# Can you print out if the number is divisible by 2 or not?
# Can you find the the sum of the numbers?

odd_nums = []
numbers.each do |x|
  if x.odd?
    odd_nums << x
  end 
end
p odd_nums

even_nums = []
numbers.each do |x|
  if x.even?
    even_nums << x 
  end
end
p even_nums

numbers.each do |x|
  p x * 2
end

numbers.each do |x|
  if x % 2 == 0
    p "#{x} is divisible by 2"
  else   
    p "#{x} is not divisible by 2"
  end
end

total = 0
numbers.each do |x|
  total += x 
end
p total