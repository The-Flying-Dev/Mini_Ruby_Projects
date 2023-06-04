cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

# unique_cities =  cities_lived_in.values.flatten.uniq
# p unique_cities

cities = []
cities_lived_in.each do |k, v|
    v.each do |city|
        cities.push(city) unless cities.include?(city)
    end    
end

p cities


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

# p cities_lived_in.map {|k,v| k if v.include?("Philadelphia") }.compact
# p cities_lived_in.map {|k,v| k.to_s.capitalize if v.include?("Philadelphia") }.compact

ex_philly_residents = []
cities_lived_in.each do |k, v|
    #ex_philly_residents << k if v.include?("Philadelphia")
    ex_philly_residents << k.to_s.capitalize if v.include?("Philadelphia") 
end
p ex_philly_residents


# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

# tally_hash = cities_lived_in.values.flatten.tally
# p tally_hash

# Getting all values into 2d array 
# Iterate through the 2d array, then iterate over each element and storing it's count in the new hash
city_hash = Hash.new(0)
cities_lived_in.values.each do |values_array|
    values_array.each do |element|
        city_hash[element] +=1
    end
end

p city_hash
p cities_lived_in.values
