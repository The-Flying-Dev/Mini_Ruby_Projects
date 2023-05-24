animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs
# 2. add 3 parakeets
# 3. increase the amount of cats by 2

p animals["dogs"]
animals["parakeets"] = 3
animals["cats"] += 2

p animals

pet_names = ["Fela", "Spot", "Patch", "Willy"]

# 1. add “Claude” to the end of the array
# 2. access the first name in the list
# 3. access the last name in the list
# 4. remove “Fela” from the list

p pet_names.push("Claude")
p pet_names.first 
p pet_names.last 
pet_names.shift
p pet_names

# .keys and .push(obj)
# What is the outer Data Structure and what are the inner Data Structures