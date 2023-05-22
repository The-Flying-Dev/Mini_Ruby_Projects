class Book
  attr_reader :title, :author, :genre 
  def initialize(title, author, genre)
    @title = title 
    @author = author
    @genre = genre
  end 
end 


class Library
  attr_reader :collection
  def initialize()
    @collection = []
  end 

  def add_book(book)
    @collection << book
  end   

  def titles # iterate through array of hashes containing objects
    @collection.map {|book| book.title}

    # titles_array = []    
    # @collection.each do |book|
    #   titles_array << book.title
    # end 
    # titles_array
  end

  def authors
    @collection.map {|book| book.author}.uniq
  end 

  def collection_table 
    col_labels = {@title => "Title", @author => "Author"}
  end 
end 


book_one = Book.new("Book1", "Author1", "Genre1")
book_two = Book.new("Book2", "Author2", "Genre2")
book_three = Book.new("Book3", "Author3", "Genre3")
book_four = Book.new("Book4", "Author3", "Genre3")

#p book_one
#p book_two
#p book_three

library_instance = Library.new
library_instance.add_book(book_one)
library_instance.add_book(book_two)
library_instance.add_book(book_three)
library_instance.add_book(book_four)

p library_instance
#p library_instance.authors

# A class is an object that consists of a collection of method definitions, it is a blueprint to  be instantiated - to create other objects
# A concrete representation of class
# A concrete representation of class
# A class is the blueprint and the object/instance are representations of the class
# def Class
# end
# class_instance = Class.new
# A new object is created
# A property of an Object whose value can be read/written through the object, they are instance variables wrapped up in reader or writer methods
# A set of of expressions that return a value which models behaviour in a class
# def method
# some expression
# end
# Variables listed in the method definition, add them as a list of variables in parenthesis after the method name
# The evaluated result of a method 
# It's the evaluated result of the last line of an expression in the method unless an explicit return comes before it
# No 
