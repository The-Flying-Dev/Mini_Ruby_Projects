require_relative 'employee'

class SalesManager < Employee
  attr_reader :base_salary, :estimated_annual_sales, :bonus

  def initialize(base_salary, estimated_annual_sales, name, id)
    @base_salary, @estimated_annual_sales = base_salary, estimated_annual_sales
    @bonus = bonus(estimated_annual_sales)
    super(name, id)
  end

  def bonus(estimated_annual_sales)
    (estimated_annual_sales * 10) / 100.0    
  end

  def benefits
    super.push(:golf_with_clients)
  end

end