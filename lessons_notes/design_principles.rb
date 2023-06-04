# Research the following topics detaling:
# What is it?
# Why is it important?

#1 Code Smells
#2 Single Responsibility Principle
#3 Abstraction
#4 Encapsulation
#5 Law of Demeter
#6 DRY/YAGNI

#1 Code Smells
# What is it? # => A surface indication that usually corresponds to  a deeper problem in the system 
# Why is it important? # => It leads one to investigate and understand the code at deeper levels 

# Examples are:
# Bloaters # => Code, methods and classes that have increased to gargantuan propostions that they are hard to work with 
# Object-Orientation Abusers # => Incomplete or incorrect application of object-oriented principles
# Change Preventers # => When changing something in one place and then you have to make changes in other places
# Dispensables # => Something pointless and unneeded whose absence will make the code more efficient and easier to understand
# Couplers # => Excessive coupling between classes or show what happens if coupling is replaced by excessive delegation

#2 Single Responsibility Principle
# What is it? # => Every class, module or function in a program should have one responsibility/purpose in that program
# Why is it important? # => Makes sofware easier to implement and prevents unexpected side effects for future changes ( CODE CAN BE REUSABLE BY SEPARATING RESPONSIBILITIES INTO DIFFERENT CLASSES )

# #3 Abstraction
# What is it? # => Handle complexity by hiding unnecessary details from the user
# Why is it important? # => Enables the user to implement more complex logic on top of the provided abstraction without understanding or thinking about the hidden complexity

# Examples are: 
# Data Abstraction # => Refers to hiding the original data entity via a data structure that can internally work through the hidden data entities                            
# Process Abstraction # => The underlying implementation details of a process are hidden where processes that under the hood use hidden processes to execute an action

# #4 Encapsulation
# What is it? # => Bundling data and methods that work on that data within one unit
# Why is it important? # => Allows you to hide specific information and control access to the object's internal state, getter/setter methods

# #5 Law of Demeter
# What is it? # => Objects should avoid accessing the internal data and methods of other objects
# Why is it important? # => The application will be more maintainable and adaptable since objects are less dependent on the internal structure of other objects

#6 DRY/YAGNI
# What is it? # => DRY - DON'T REPEAT YOURSELF => Avoid duplication of code within the application
# => YAGNI ("You're not gonna need it") => Only implement functionality that you need
# Why is it important? # =>  DRY => Encourages developers to write code that is clean, modular and reusable
# => YAGNI => Reduces complexity caused by unnecessary code this makes the the application easer to understand, test and maintain