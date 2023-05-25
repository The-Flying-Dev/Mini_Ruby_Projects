# Intro to Testing

# .to methods result

# .to eql       # => Expected result
# .to be_a      # => To be a kind of Klaas = Object
# .to be true   # => Checks whether the compared against value is true, does the value literally equal true
# .to be_nil    # => The actual result of the method call is nil 
# .to include   # => Works for collections and strings, only passes if all arguments are found in the collection

# What 2 directories should we have within our project directory?
## spec and lib

# What do you have to require in a spec file?
## The directory and file for the class that is being tested and rspec 
## => require 'rspec'
## => require "./lib/name_of_class.rb"

# What goes in the initial describe block?
## The name of the class that you are testing # => describe NameOfClass

# What is the syntax for a RSpec spec?
## rspec spec # => Run all spec files from root directory 
## rspec spec spec/name_of_file_spec.rb # => Testing for a single file

# Name 3 .to methods you learned about today & describe their syntax.
## .to be_a_kind_of   # => Be an type of / instance of Object(Klass)
## .to be_true  # => Asserts the test value evaluates to true, is the value truthy compared to the expected value
## .to be_nil  # => Passes if the actual value is nil