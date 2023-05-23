office_supplies = Hash.new

office_supplies[:staples] = 9000
office_supplies[:paper] = 45050
office_supplies[:chairs] = 5
office_supplies[:desk] = 2 

p office_supplies[:staples]
p office_supplies[:paper] += 2000
p office_supplies.keys # data type = array
p office_supplies.keys.class
p office_supplies.values 

str = "Office Supplies: "

pup = office_supplies.each do |k,v|    
    str << " #{v.to_s} #{k.to_s},"    
end
str["desk,"] = "desk."
p str


# A Hash is a collection of named values by storing items to associated keys
# When you want to store data by values of keys of your choosing,
#   keeps data in an associative manner with fast access by key.
#   Can be used to keep configuration settings, options, parameters.
# Arrays/Hashes are collections used to store and retrieve(Lookup) Data
# Arrays - Items retrieved by Index, Hash - Items retrieved by Key
# Arrays - Multiple Items with the same value, Hashes - Each Key must be Unique
# Hashes have a default value when accessing keys that don't exist, by default that value is nil
# has_key? - Checks if key exists, returns boolean
# length - Checks length of Hash
# transform_values - Returns new by running block once for every value
# shift - Removes key/value pair from Hash and returns it as the two-item array 
# values_at - Returns an Array containing values associated with the given keys
# each_key - calls block for each key
# merge - Called on Hash and joins a second Hash that's passed as an argument


