# ### 2: State Capitals

# You have 2 hashes, one which maps state names to state abbreviations,
# and one which maps state abbreviations to their capital:

# ```
states = {"Oregon" => "OR",
  "Alabama" => "AL",
  "New Jersey" => "NJ",
  "Colorado" => "CO"}

capitals = {"OR" => "Salem",
   "AL" => "Montgomery",
   "NJ" => "Trenton",
   "CO" => "Denver"}
# ```

# * Level 1: Write some code which given a state name ("Oregon") outputs
#   its capital ("Salem")
# * Level 2: Handle the case when a state's information is not known by
#   returning "Unknown"
# * Level 3: Now let's go the other way. Given a capital name ("Denver"),
#   return the state name for which it is the capital ("Colorado")

# p states["Oregon"]
# if states.has_key?("New Jersey")
#   p states["New Jersey"]
# else  
#   p "Unknown"
# end

# capital = capitals.key("Denver")
# p states.key(capital)


# Level 1: Write some code which given a state name (“Alabama”) outputs the state abbreviation
# Level 2: Write some code which given a state name (“Oregon”) outputs its capital (“Salem”)
# Level 3: Handle the case when a state’s information is not known by returning “Unknown”
# Level 4: Let’s go the other way. Given a capital name (“Denver”), return the state name for which it is the capital (“Colorado”)
# Level 5: Write some code to turn these two hashes into one nested hash which looks like this:


# states = {"Oregon" => "OR",
#   "Alabama" => "AL",
#   "New Jersey" => "NJ",
#   "Colorado" => "CO"}

# capitals = {"OR" => "Salem",
#    "AL" => "Montgomery",
#    "NJ" => "Trenton",
#    "CO" => "Denver"}

#   state_info = {
#      "Oregon" => {abbreviation: "OR", capital: "Salem"},
#      "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
#      "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
#      "Colorado" => {abbreviation: "CO", capital: "Denver"}
#     }

# Get all keys from states Hash
# Get all key values from states Hash
# Use values from states Hash as keys to get values from capitals hash


#p states["Alabama"]
abbrev = states["Oregon"] # "OR"
# p capitals[abbrev] # => "Salem"
# p capitals[states["Oregon"]] # => "Salem"

# if states.has_key?(key)
#   return "Unknown"
# end

# p states.key(capitals.key("Denver")) # => "Colorado"

states_keys = states.keys # => get all keys

state_info = 
###########################################################################################################

# You have age data for a group of people:

ages = [
['Frank', 33],
['Stacy', 15],
['Juan', 24],
['Dom', 32],
['Steve', 24],
['Jill', 24]
]
# Level 1: Write code that’ll output the ages (and only the ages) for the data set
# Level 2: Write code that’ll output the names (and only the names) in order by ascending age
# Level 3: Output the name with the age, like Juan (24)
# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value 
# (all the people who are that age). e.g. {24 => ['Juan', 'Steve', 'Jill']...}

# Level 1:
# Iterate into every array and extract every second element

ages_array = []
ages.each do |inner_array|
  ages_array << inner_array[1]
end

# p ages_array # => [33, 15, 24, 32, 24, 24]

# Loop through arrays and push all elements into new Array - then filter for Integers
# ages.each do |inner_array|
#   inner_array.each do |element|    
#     ages_array.push(element)
#   end
# end
# p ages_array.filter { |i| i.is_a?(Integer) }  # => [33, 15, 24, 32, 24, 24]


# Level 2:
# Convert ages array into a Hash
# Sort Hash in ascending order by age/integer value
# Convert back into Hash since sort_by returns an Array
# Get all keys using .keys method

# Solution 1: Split all steps 
ages_hash = ages.to_h
# p ages_hash  # => {"Frank"=>33, "Stacy"=>15, "Juan"=>24, "Dom"=>32, "Steve"=>24, "Jill"=>24}

sorted_ages_hash = ages_hash.sort_by {|k,v| v}.to_h
# p sorted_ages_hash  # => {"Stacy"=>15, "Juan"=>24, "Steve"=>24, "Jill"=>24, "Dom"=>32, "Frank"=>33}
# p sorted_ages_hash.keys  # => ["Stacy", "Juan", "Steve", "Jill", "Dom", "Frank"]

# # Solution 2: Chain methods together
# p ages.to_h  
#       .sort_by {|k,v| v}
#       .to_h
#       .keys # => ["Stacy", "Juan", "Steve", "Jill", "Dom", "Frank"]

# Level 3:

# For a Single entry
# .assoc method returns key/value pair for given key
# Using Aray index with interpolation to print out result
name_age_pair = ages_hash.assoc('Juan')
#p name_age_pair  # => ["Juan", 24]
# puts "#{name_age_pair[0]} (#{name_age_pair[1]})"  # => Juan (24)


# For the Entire Array

# ages_hash.each_pair { |k, v| puts "#{k} (#{v})"}  # =>  # Frank (33)
                                                        # Stacy (15)
                                                        # Juan (24)
                                                        # Dom (32)
                                                        # Steve (24)
                                                        # Jill (24)


# Level 4:
# Invert Hash and store all new values in Array
#p ages_array  # => [33, 15, 24, 32, 24, 24]

ages_hash # => {"Frank"=>33, "Stacy"=>15, "Juan"=>24, "Dom"=>32, "Steve"=>24, "Jill"=>24}

p sorted_ages_hash.each_with_object({}) { |(k, v), h| (h[v] ||= []) << k }

swapped_hash = sorted_ages_hash.each_with_object({}) do |(k, v), obj|
                obj[v] ||= []
                obj[v] << k
               end

p swapped_hash 
