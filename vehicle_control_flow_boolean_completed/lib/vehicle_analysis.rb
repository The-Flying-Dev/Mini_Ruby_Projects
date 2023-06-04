# vehicle_analysis.rb
require_relative 'vehicle'

class VehicleAnalysis

  def analyze(vehicle)
    puts "Vehicle has four wheels "
    puts "with four wheel drive" if vehicle.four_wheel_drive? && !vehicle.tractor?
    puts "with two wheel drive" if !vehicle.four_wheel_drive? && !vehicle.tractor?
    puts "with big wheels in the back" if vehicle.big_back_wheels? unless vehicle.car?    
  end
end

vehicle = Vehicle.new("pickup", true, true)
vehicle1 = Vehicle.new("tractor", true, true)
vehicle2 = Vehicle.new("car", false, false)

VehicleAnalysis.new.analyze(vehicle)
VehicleAnalysis.new.analyze(vehicle1)
VehicleAnalysis.new.analyze(vehicle2)

  # def analyze(vehicle)
  #   if vehicle.car?
  #     if vehicle.four_wheel_drive? || !vehicle.four_wheel_drive?
  #       puts "Vehicle has four wheels "
  #       if vehicle.four_wheel_drive?
  #         puts "with four wheel drive"
  #       else
  #         puts "with two wheel drive"
  #       end
  #     end
  #   elsif vehicle.tractor?
  #     puts "Vehicle has four wheels "
  #     if vehicle.big_back_wheels?
  #       puts "with big wheels in the back"
  #     end
  #   elsif vehicle.pickup?
  #     puts "Vehicle has four wheels "
  #     if vehicle.four_wheel_drive?
  #       puts "with four wheel drive"
  #     else
  #       puts "with two wheel drive"
  #     end
  #     if vehicle.big_back_wheels?
  #       puts "with big wheels in the back"
  #     end
  #   end
  # end
