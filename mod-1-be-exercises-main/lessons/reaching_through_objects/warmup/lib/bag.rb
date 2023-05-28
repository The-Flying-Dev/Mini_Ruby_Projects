require_relative 'candy'
class Bag
  attr_accessor :bag #:candy 
  def initialize    
    @bag = []
  end

  def empty?
    bag.empty?
  end

  def count 
    bag.length
  end

  def add_candy(candy)
    #bag << candy 
    bag.unshift(candy)
  end

  def candies
    bag
  end

  def contains?(candy)
    bag.map { |x| x.type }.include?(candy)
  end
end

# bag = Bag.new
# bag.add_candy(Candy.new("Lindt chocolate"))
# bag.add_candy(Candy.new("chocolates"))

# bag.add_candy(Candy.new("Mars Bar"))
# p bag.candies
# p bag.contains?("Mars Bar")
# type = bag.candies.first.type
# p type 