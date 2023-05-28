# ./jeep.rb
# require_relative 'engine'
# require_relative 'airconditionable'
require_relative 'vehicle_module'

class Jeep
  # include Engine
  # include Airconditionable
  include Vehicle 
  # def start
  #   "Engine on!"
  # end

  # def stop
  #   "Engine off!"
  # end

  def drive
    "All wheels go!"
  end
end


# jeep = Jeep.new
# p jeep.start 
# p jeep.stop
# p jeep.aircon_on 
# p jeep.aircon_off
