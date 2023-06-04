pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
# 2. what is pizza_toppings.values
# 3. how can I access the element “pineapple”
# 4. how can I add the element “olives” to the key “veggies”?

p pizza_toppings.count # => 3
p pizza_toppings.values # => the nested arrays returned as a 2d Array -> [["green peppers", "jalapeño", "mushrooms"], ["pepperoni", "sausage", "sardines"], ["pineapple"]]
p pizza_toppings[:fruit] # => pineapple
p pizza_toppings[:veggies] << "olives" # OR p pizza_toppings[:veggies].push("olives") # => ["green peppers", "jalapeño", "mushrooms", "olives"]

p pizza_toppings