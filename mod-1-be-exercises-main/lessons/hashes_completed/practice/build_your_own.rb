# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here

# Steps
# 1. Create a hash called new_band.
# 2. Add a bassist to your new_band hash.
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
# 4. Find the value attached to :vocalist in your hash.
# 5. Add a vocalist to your hash.
# 6. Add a drummer to your hash.
# 7. Get all the keys in your Hash. What kind of object does that method return?
# 8. Get all the values in your Hash. What kind of object does that method return?
# 9. Assign a new value to the :vocalist key of your hash.
# 10. How has keys changed after the last step? How has values changed?

# 1
new_band = {}

# 2
new_band[:bassist] = "band_member_1"

# 3
p new_band[:bassist]

# 4
p new_band[:vocalist] # => Retruns nil as the key does not exist yet

# 5
new_band[:vocalist] = "band_member_2"

# 6
new_band[:drummer] = "band_member_3"

# 7
p new_band.keys # => Returns an Array

# 8
p new_band.values # => Returns an Array

# 9
new_band[:vocalist] = "band_member_10"

# 10
p new_band.keys # => Keys have remained the same
p new_band.values # => Only the :vocalist value has changed