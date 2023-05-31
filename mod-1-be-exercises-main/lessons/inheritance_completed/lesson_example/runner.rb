require './lib/ceo'
require './lib/manager'
require './lib/intern'
require './lib/sales_manager'

ali = Ceo.new(15, 20, "Ali", 01)
ben = Manager.new(10)
chris = Intern.new(5)
sales = SalesManager.new(8, 20)

p ali.total_compensation
p sales.total_compensation

# p ben 
# p chris

#require "pry"; binding.pry

# Ali, Ben, and Chris all need names and IDs in the system. Where can they get those?