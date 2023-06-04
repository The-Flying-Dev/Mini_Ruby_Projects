require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  attr_reader :name
  def initialize(name)
    @name = name
    #binding.pry ##What is the @name property? => instance variable
  end

  def say_hello
    #binding.pry ##What will be output here? => Hello, Parker
    "Hello, " + @name
  end

  def self.create_multiple(users)    
    users.map do |user|
      new_user = User.new(user[:name]) # => calling .name attribute afte parens will only add the values from the array of hashes
      #binding.pry ## What is new_user? What properties does it have? => it's an array, it holds the new user objects      
    end
    #arr.class 
  end
end

# users = [
#   {name: "Sal"},
#   {name: "Brian"},
#   {name: "Megan"},
# ]
# user = User.new("Alex")
# puts User.create_multiple(users)
