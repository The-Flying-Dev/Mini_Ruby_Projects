# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
flattened_animals = nested_animals
                    .flatten 
                    .map(&:to_s) #{ |animal| animal.to_s }
              
p flattened_animals

str_array = []
nested_animals.each do |inner_array|
  inner_array.each do |ele|
    str_array << ele.to_s
  end
end

p str_array


# 2. Return an unnested array of animals with length >= 4
length_over_four_animals = nested_animals
                           .flatten
                           .filter { |animal| animal.length >= 4 }

p length_over_four_animals

# loop through 2d array, then into sub-arrays, iterating over each element
selected_animals = []
nested_animals.each do |inner_array|
  inner_array.each do |ele|
    selected_animals.push(ele) if ele.length >= 4
  end
end

p selected_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animals_hash = {}

  nested_animals
  .flatten
  .each_with_object(animals_hash) do |animal, hash|
    animals_hash[animal] = animal.length 
  end

p animals_hash


# loop through 2 array
# iterate through inner array, assign each element as the key and it's length as the value 
animals = {}
nested_animals.each do |inner_array|
  inner_array.each do |ele|
    animals[ele] = ele.length 
  end
end

p animals


