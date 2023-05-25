# Use .each to complete the following:

singers = ["billie", "ariana", "lizzo", "leon"]

# 1. Can you print out their names capitalized?
# 2. Can you print out their names in all caps?
# 3. Can you print out their names but reversed? (["leon", "lizzo", "ariana", "billie"])
# 4. Can you create a new array with only the names that are longer than four letters in length?
# 5. Can you create a new array with the lengths of their names?



# 1
capitalized_names = []
singers.each do |singer|
  capitalized_names << singer.capitalize
end

p capitalized_names 

# 2 
all_caps = []
singers.each do |singer|
  all_caps << singer.upcase 
end

p all_caps 

# 3
long_names = []
singers.each do |singer|
  if singer.length > 4
    long_names << singer
  end 
end

p long_names

# 4 
reversed_singers = []
singers.each do |singer|  
    reversed_singers.unshift(singer)   
end

p reversed_singers

# 5
lengths_of_names = []
singers.each do |singer|
  lengths_of_names << singer.length 
end

p lengths_of_names
