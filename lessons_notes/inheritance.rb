# Why might we decide to use inheritance?
# => When we want to extract common behaviours from classes and place them in a superclass, this allows logic to be kept in one place

# Can you think of times that inheritance might not be the right choice?
# => When classes don't share common behaviour or there is a "has-a" relationship between the two classes eg: class Dog "has" ability to run vs class Dog "is a" mammal

# What is the syntax for creating a class that inherits from another class?
# => require_relative 'vehicle'
# => class Car < Vehicle

# How many classes can you inherit from?
# => 1

# How do you decide which should inherit from which?
# => The child class should be a "type-of" object of the parent class
# => There must be a is-a relationship between parent and child classes, child is a car, mammal etc

# What does super do, and what are the differences between the three different ways you can call it?
# => super calls the superclass implementation of the current method
# => super - calls the superclass method with all arguments in the current method
# => super(arg1, arg2) - calls the superclass method with arg1 and arg2 respectively in the current method 
# => super() - calls the superclass method with no arguments

# What does it mean to override a method in Ruby?
# => It allows the subclass to provide a specific implemetation of a method already defined by it's superclasses