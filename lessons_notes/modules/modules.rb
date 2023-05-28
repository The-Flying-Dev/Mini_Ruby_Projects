## Reflection 

# Both classes have methods to display the state and adding and removing comments 
# There is a repition of methods 
# One benefit is that a module can be used for sharing code among different classes

## Checks for understanding 

# 

require_relative 'engine_module'
require_relative 'airconditionable'

class Ferrari
   include Engine
   include Airconditionable

  def drive 
    puts "Back wheels go"
  end
end

class Raptor
  include Engine
  include Airconditionable

  def drive 
    puts "All wheels go"
  end

  def stop # => this method overrides the module method
    puts "WAIIIIIIIT"
  end
end

ferrari = Ferrari.new 
puts ferrari.start
puts ferrari.drive
puts ferrari.aircon_on
puts ferrari.aircon_off
puts ferrari.stop
puts "--------------------------------------"
puts ""
raptor = Raptor.new 
puts raptor.start 
puts raptor.drive
puts raptor.aircon_on
puts raptor.aircon_off
puts raptor.stop