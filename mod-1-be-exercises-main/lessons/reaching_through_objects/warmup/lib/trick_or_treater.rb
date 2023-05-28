require_relative 'bag'
require_relative 'candy'
require_relative 'costume'

class TrickOrTreater

  attr_reader :costume
  attr_accessor :bag 

  def initialize(costume)
    @costume = costume
    @bag = []
  end
  
  def dressed_up_as
    costume.style
  end

  def has_candy? 
    !bag.empty? # => returns boolean
    #return false if bag.empty? # => if bag has candy this solution will return nil as it will contain the object Candy itself
  end

  def candy_count
    bag.size 
  end

  def add_candy(candy)
    bag.unshift(candy)
  end

  def eat 
    bag.pop 
  end
end

# costume = Costume.new('Cowboy')
# trick_or_treater = TrickOrTreater.new(costume)

# p trick_or_treater.has_candy?

# p trick_or_treater.candy_count
# trick_or_treater.add_candy Candy.new('Gummy bears')
# p trick_or_treater.candy_count