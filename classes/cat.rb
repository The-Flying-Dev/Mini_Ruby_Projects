class Cat
  def initialize(name, age)
    @name = name
    @age = age
  end

  # reader method, "read" attribute of an object
  def name 
    @name 
  end

  def age 
    @age 
  end

  # writer method 
  def age=(age)
    @age = age 
  end
end


# describe(Cat) do
#   describe("#name") do 
#     it ("returns a cats name") do 
#       cat = Cat.new("Milo", 12) 
#       expect(cat.name()).to(eq("Milo"))  
#     end
#   end  
# end



cat1 = Cat.new("Jerry", 20)

p cat1.name
p cat1.age 
cat1.age = 21
p cat1.age 




# attr_reader :reader method for an attribute 
# attr_writer :writer method for an attribute 
# attr_accessor :reader and writer method for an attribute

class CatNumberTwo
  attr_reader(:name, :breed)
  attr_writer(:address)
  attr_accessor(:age)

  def initialize(name, breed, address, age)
    @name = name
    @breed = breed
    @address = address
    @age = age
  end
end

fluffy = CatNumberTwo.new("fluffy", "Persian", "London", 3)

p fluffy.name 
p fluffy.breed 
p fluffy.address = "UK"
p fluffy.age 
fluffy.age = 4
p fluffy.age