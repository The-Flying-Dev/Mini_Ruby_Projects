require './lib/dog'

max = Dog.new("Max")
puts max.woof

## Describe what each part of the code above did -
# `max` => Assigning a variable to store an instance of the Dog class
# `Dog` => Instantiating the Dog class to create a new object
# `.woof` => Calling the instance method woof on the instance of the Dog class

puts Dog.woof

## Is there any difference between the two methods above? (max.woof and Dog.woof)?

# => Yes, max.woof is an instance method which is available to all objects instantiated from the Dog class
# => Dog.woof is a class method, this can be called directly on the class
# There is no need to create an instance of the class when using this method

## Un-comment the line of code below, does it work? Why or why not?
# Dog.bark
# => No, this is a instance method and can only be called on instances of the Dog class

