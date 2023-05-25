# Use .each to complete the following:

numbers = [1,2,3,4,5]

# 1. Can you create a new array with only the odd numbers?
# 2. Can you create a new array with only the even numbers?
# 3. Can you print out each number doubled?
# 4. Can you print out if the number is divisible by 2 or not?
# 5. Can you find the the sum of the numbers?

# 1
odd_numbers = []
numbers.each do |number|
  if number.odd?
    odd_numbers << number 
  end
end

p odd_numbers

# 2 
even_numbers = []
numbers.each do |number|
  if number.even?
    even_numbers << number 
  end
end

p even_numbers 

# 3 

doubled_numbers = []
numbers.each do |number|
  doubled_numbers << number * 2
end

p doubled_numbers

# 4
divisible_by_two = []
numbers.each do |number|
  if number%2==0
    divisible_by_two << "#{number} is divisible by 2"
  else  
    divisible_by_two << "#{number} is not divisible by 2"
  end
end

p divisible_by_two

# 5 
total = 0
numbers.each do |number|
  total += number 
end

p total