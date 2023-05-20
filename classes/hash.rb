
phonebook = Hash.new()
phonebook.store("Michael", 5035551212)
phonebook.store("Li", 4159990000)
phonebook.store("Juan Carlo", 2021115599)

p phonebook.fetch("Michael")
p phonebook.include?("Li") # returns true if the key is present in the hash
p phonebook.invert() # returns a new hash using the values as keys, and the keys as values
p phonebook.key(2021115599) # key(value) returns the key corresponding to the given value
p phonebook.keys() # returns an array of all the keys
p phonebook.length() # returns the number of entries.
# p phonebook.merge(other_hash) # combines two hashes into one