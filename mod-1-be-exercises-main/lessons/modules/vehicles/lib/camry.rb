# ./camry.rb
require_relative 'engine'
require_relative 'airconditionable'
# require_relative 'vehicle_module'

class Camry
  include Engine
  include Airconditionable
  # include Vehicle 
  # def start
  #   # "Engine on!"
  #   "WAIIIIIIIT"
  # end

  # def stop
  #   "Engine off!"
  # end

  def drive
    "Back wheels go!"
  end
end


# camry = Camry.new
# p camry.start 
# p camry.stop
# p camry.aircon_on 
# p camry.aircon_off