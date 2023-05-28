class Costume
  attr_reader :style

  def initialize(style)
    @style = style 
  end
end

# first1 = Costume.new("Dragon")
# p first1.style 