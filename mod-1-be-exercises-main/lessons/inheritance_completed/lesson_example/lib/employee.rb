class Employee
  attr_reader :name, :id

  def initialize(name, id) # All employees must have these attributes 
    @name = name
    @id = id
  end

  def total_compensation
    @base_salary + @bonus # => These values come from each child class upon instantiation
  end

  def benefits
    [:sick_leave]
  end

  def base_salary # => In the event that the child class does not have these values defined
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end

  def bonus
    raise NotImplementedError, "This #{self.class} cannot respond to:" 
  end

end