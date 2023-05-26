require 'pry'

favorite_things = ["Trapper Keeper", "Netscape Navigator", "Troll Doll"]
binding.pry

new_thing = "Banana Split"

favorite_things << new_thing
binding.pry 

25.times do
  p favorite_things
  binding.pry
end

# => : ( colon ) in pager, type q to exit 
# => type exit to close pry session 
# => type exit! or !!! to end session