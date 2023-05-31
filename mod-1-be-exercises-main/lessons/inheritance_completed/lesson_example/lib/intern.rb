require_relative 'employee'

class Intern < Employee
  attr_reader :base_salary #:hourly_rate
  
  def initialize(base_salary, name, id)
    #@hourly_rate = hourly_rate
    @base_salary = base_salary
    @bonus = 0
    super(name, id)
  end

  # def total_compensation # overriding method of the same name in superclass
  #   hourly_rate * 2000
  # end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    # [:gets_to_get_me_coffee]
    super.unshift(:gets_to_get_me_coffee)
  end

end