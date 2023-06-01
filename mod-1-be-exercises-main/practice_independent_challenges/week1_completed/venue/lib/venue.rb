class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name, @capacity = name, capacity
    @patrons = []
  end

  def add_patron(person)
    @patrons.push(person)
  end

  def yell_at_patrons
    upcased_patrons = @patrons.map {|patron| patron.upcase} #refactor
    upcased_patrons
  end

  def over_capacity?
    @patrons.length > @capacity
  end

  def kick_out
    until over_capacity? == false      
      @patrons.pop
    end
    # @patrons.length <= @capacity 
  end
end

# venue = Venue.new('Bluebird', 4)
# venue.add_patron('Mike')
# venue.add_patron('Megan')
# venue.add_patron('Bob')
# venue.add_patron('James')
# p venue.over_capacity?

# # venue.add_patron('James')
# venue.add_patron('Cat')

# p venue.over_capacity?
