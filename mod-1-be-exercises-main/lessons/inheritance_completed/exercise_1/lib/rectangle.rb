require_relative 'Shape'

class Rectangle < Shape 

  # this class should have the following properties:
  # - color
  # - length
  # - width
  # It should have the following methods:
  # - area (width * length)
  # - perimeter (2 * (length + width))

  # attr_reader :color, :length, :width
  def initialize(color, length, width)
    super(color, length, width)
    # @color = color
    # @length = length
    # @width = width
  end 

  def area
    super
    # @width * @length
  end

  def perimeter
    super
    # (2 * (@length + @width))
  end

  def default_family
    super
  end

end