pets = {:dog => {:name => "Chance", :weight => "45 pounds"},
        :cat => {:name => "Sassy", :weight => "15 pounds"}
       }

# 1. what is pets.count
# 2. what is pets.keys
# 3. what is pets.values
# 4. how can I access the element "15 pounds"
# 5. how can I add :age => 3 to the value of the key :dog

p pets.count # => 2
p pets.keys # => [:dog, :cat]
p pets.values # => values are the nested hashes -> [{:name => "Chance", :weight => "45 pounds"}, {:name => "Sassy", :weight => "15 pounds"}]
p pets[:cat][:weight] # => 15 pounds 
pets[:dog][:age] = 3

p pets 


# .keys and .push(obj)
# What is the outer Data Structure and what are the inner Data Structures # => outer Data Structure is a Hash and inner Data Structures are Hashes