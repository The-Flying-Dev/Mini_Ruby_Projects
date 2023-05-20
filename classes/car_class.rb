class Car 
  def start
    puts "car started"
    inject_fuel()

    # self is only available implicitly inside a class
    # self.inject_fuel()
  end

  private  

  def inject_fuel
    puts "fuel injected"
  end
end

car = Car.new()
#p car.inject_fuel
puts car.start

