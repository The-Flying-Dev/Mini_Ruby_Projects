# What does an error look like when using Class Methods?
require 'pry'

class Dog
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def bark
    puts "#{@name} says, 'bark'."
  end

  def self.bark
    binding.pry ## Can we access @name from this class method? What will output next?
    puts "#{@name} says, 'bark'." # => Returns " says, 'bark'."
  end

end

fluffy = Dog.new("Fluffy")
fluffy.bark
puts Dog.bark
puts "\n" # => avoids nil as last result

# => "Fluffy says, 'bark'."

## Uncomment each line of code, one at a time. What is the difference between the two errors?
## What specific data type is each error on - are they instances or classes?

#fluffy.woof
# => undefined method "woof" for #<Dog:0x00....> (NoMethodError)
# => THIS ERROR IS AN INSTANCE METHOD ERROR, THE METHOD THAT IS CALLED HAS NOT BEEN DECLARED YET

#Dog.woof
# => undefined method "woof" for Dog:Class
# => THIS ERROR IS A CLASS METHOD ERROR, THE METHOD THAT IS CALLED HAS NOT BEEN DECLARED YET