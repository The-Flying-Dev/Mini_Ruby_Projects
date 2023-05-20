class Word
  def initialize(str)
    # instance variable and argument passed to initialize can be different 
    @word = str
  end

  # any method defined as def some_method is an instance method, because they are called on instance of an object/class
  def scramble()
    @word.reverse().upcase() 
  end  
end


word = Word.new("Hippo")
p word.scramble() 