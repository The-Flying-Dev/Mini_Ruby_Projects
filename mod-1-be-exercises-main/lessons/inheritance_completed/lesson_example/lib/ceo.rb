require_relative 'employee'

class Ceo < Employee 

  attr_reader :base_salary,
              :bonus

  def initialize(base_salary, bonus, name, id) # => name and id are attributes fetched from the super class 
    @base_salary = base_salary
    @bonus       = bonus
    super(name, id)
  end

  def total_compensation # Adding 1 to total compensation 
    super + 1
  end

  def benefits # using method from superclass but modifying the return value
    super.push(:health_insurance)
  end

end