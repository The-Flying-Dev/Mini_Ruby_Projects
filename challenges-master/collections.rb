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

#   state_info = {
#      "Oregon" => {abbreviation: "OR", capital: "Salem"},
#      "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
#      "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
#      "Colorado" => {abbreviation: "CO", capital: "Denver"}
#     }

p states["Alabama"]
abbreviation = states["Oregon"] # "OR"
p capitals[abbreviation]
p capitals[states["Oregon"]]

# if states.has_key?(key)
#   return "Unknown"
# end

p states.key(capitals.key("Denver"))

states_keys = states.keys # => get all keys

###########################################################################################################

