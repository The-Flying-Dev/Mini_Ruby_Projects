def stores 
  {
    olive_garden: {
      employees: [
        'Jeff',
        'Zach',
        'Samantha'
      ],
      dishes:[
        {
          name: 'Risotto',
          ingredients: [
            'Rice',
            'Cheese',
            'Butter'
          ],
          price: 12
        },
        {
          name: 'Steak',
          ingredients: [
            'Beef',
            'Garlic'
          ],
          price: 15
        }
      ] 
    },
    dennys: {
      employees: [
        'Bob',
        'Sue',
        'James'
      ],
      dishes: [
        {
          name: 'Pancakes',
          ingredients: [
            'Flour',
            'Eggs',
            'Milk',
            'Syrup'
          ],
          price: 10
        },
        {
          name: 'Waffles',
          ingredients: [
            'Flour',
            'Eggs',
            'Syrup'
          ],
          price: 7
        }
      ]
    },
    macdonalds: {
      employees: [
        'Alvin',
        'Simon',
        'Theodore'
      ],
      dishes: [
        {
          name: 'Big Mac',
          ingredients: [
            'Bun',
            'Hamburger',
            'Ketchup',
            'pickles'
          ],
          price: 5
        },
        {
          name: 'Fries',
          ingredients: [
            'Potatoes',
            'Salt'
          ],
          price: 2
        }
      ]
    }
  } 
end

# p stores[:dennys][:dishes][0][:ingredients]

# p stores[:olive_garden][:dishes][0][:price]

# p stores[:macdonalds][:dishes][0][:ingredients]

# p stores.keys

# names =[]
# stores[:olive_garden][:dishes].each do |item|
#   names << item[:name]
# end
# p names 

# employees = []
# stores.each do |k, v|  
#   employees << v[:employees]  
# end
# p employees.flatten 

# ingredients_list = []
# stores.each do |store, item|
#   item[:dishes].each do |dish|
#     ingredients_list.concat(dish[:ingredients])
#   end
# end
# p ingredients_list#.flatten 

# total_price = 0
# stores[:olive_garden][:dishes].each do |item|
#   total_price += item[:price]
# end
# p total_price

olive_garden_menu = {}
stores