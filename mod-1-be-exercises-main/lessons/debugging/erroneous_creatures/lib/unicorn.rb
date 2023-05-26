class Unicorn # mispelled class

  attr_reader :name
  attr_accessor :color, :eating

  def initialize(name, color="white")
    @name = name
    @color = color
    @eating = false
  end

  def white? 
    # @colors == "white"
    @color == "white"
  end

  def say(x) # no end
    "**;* #{x} **;*"
  end 

  def fly
    if @eating
      false
    else
      true
    end
  end

  def eat
    @eating = true
    "**;* yummmm cotton candy **;*"
  end

end
