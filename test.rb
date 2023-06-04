# name_array_hash = [ 
#   { name: "harry"},
#   { :name1 => "sally"},
#   { "name2" => "billy"}
# ]

# # Appending Surname to 1st key/value pair
# name_array_hash[0][:name] += " king"

# # p name_array_hash

# names = []

# # Loop through Array and nested Hashes and return all values
# name_array_hash.each do |element|
#   element.each do |k,v|
#     names.push(element[k])
#   end  
# end 

# # p names 

# array_keys = []
# # Loop through Array and nested Hashes and return all keys
# name_array_hash.map do |h|
#   h.map do |k,v|
#     array_keys.push(k)
#   end
# end

# # p array_keys




# a = [1,2,3,4,5,6,7,8,9,10]
# b = [11,12,13,14,15,16,17,18,19,20]

# # p a.pop # returns last element
# # p a.pop(7) # if within range, returns last n elements
# # p b.pop(100) # if out of range, returns entire array/collection

# # p a.push(21,22,23,24)
# # a.push(21,22,23,24) => appends each argument in objects (21,22,23,24) to self (a) and returns self
# # a.push(21,22,23,24) => push appends arguments to the end of the Array





# states = {"Oregon" => "OR",
#   "Alabama" => "AL",
#   "New Jersey" => "NJ",
#   "Colorado" => "CO"}

# capitals = {"OR" => "Salem",
#    "AL" => "Montgomery",
#    "NJ" => "Trenton",
#    "CO" => "Denver"}

# #   state_info = {
# #      "Oregon" => {abbreviation: "OR", capital: "Salem"},
# #      "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
# #      "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
# #      "Colorado" => {abbreviation: "CO", capital: "Denver"}
# #     }

# # Get all keys from states Hash
# # Get all key values from states Hash
# # Use values from states Hash as keys to get values from capitals hash
# p states.merge(capitals)
# states_keys = states.keys # => get all keys

# #state_info = 






def findPuppies(pups)
    arr = []
    pups.each do |pup|
        if pup[:age] == 1
            arr << pup[:name]
        end
    end 
    arr 
end

puppies = [
  { name: "Sodie", age: 8, faveSnack: "carrots" }, 
  { name: "Toph", age: 1, faveSnack: "steak" },
  { name: "Luna", age: 1, faveSnack: "TBD" }
]

p findPuppies(puppies)

def totalAge(pups)
  total = 0
  pups.each do |pup|
    total += pup[:age]
  end
  total 
end

puts totalAge(puppies)
