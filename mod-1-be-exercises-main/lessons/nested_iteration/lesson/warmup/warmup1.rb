# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

#p animals.map { |animal| animal.to_s }
p animals.map(&:to_s) 



# 2. Return an array of animals with a length >= 4.
p animals.filter { |animal| animal.length >= 4 }