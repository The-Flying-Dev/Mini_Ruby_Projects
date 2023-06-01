require_relative 'employee'

class Intern < Employee
  attr_accessor :hourly_rate  #, :base_salary
  
  def initialize(hourly_rate, name, id)
    @hourly_rate = hourly_rate
    #@base_salary = base_salary
    @bonus = 0
    super(name, id)
  end

  def total_compensation # overriding method of the same name in superclass
    hourly_rate * 2000
  end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    # [:gets_to_get_me_coffee]
    super.unshift(:gets_to_get_me_coffee)
  end

end

# intern = Intern.new(5, "int", 9)
# p intern.total_compensation