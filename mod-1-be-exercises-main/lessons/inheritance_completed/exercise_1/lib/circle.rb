require_relative 'shape'

class Circle < Shape 

  attr_reader :radius #:color
  # def initialize(color, radius)
  #   @color, @radius = color, radius
  # end

  def initialize(color, radius)
    super(color, nil, nil) # when inheriting and not needing attributes assign as nil and do the same for tests
    @radius = radius
  end

  def circumference
    (2 * (3.14 * @radius)).round(1)
  end

  def perimeter # overriding method of the same name in superclass
    (2 * (3.14 * @radius)).round(1)    
  end

  def diameter
    2 * @radius
  end

  def area 
    ((@radius**2)*3.14).floor
  end
  
end

# c = Circle.new("red", 15)
# p c.default_family
# p c.circumference
# p c.perimeter