numbers = [[1, 2, 3], [4, 5, 6]]

# 1. what is numbers.count
# 2. what is numbers.first.count
# 3. how can I access the element 5
# 4. how can I add [7,8,9] to the numbers array
# 5. What element does numbers[0] return?

p numbers.count # => 2
p numbers.first.count # => 3
p numbers[1][1] # => 5
p numbers.push([7,8,9])
p numbers[0] # => [1,2,3]

p numbers 
