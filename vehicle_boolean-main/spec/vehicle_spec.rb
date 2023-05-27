require './lib/vehicle'

RSpec.describe Vehicle do 
  it 'exists' do
    vehicle = Vehicle.new("pickup", true, true)

    expect(vehicle).to be_an_instance_of(Vehicle)
  end

  it "has attributes" do 
    vehicle = Vehicle.new("pickup", true, true)

    expect(vehicle.model).to eq("pickup")
    expect(vehicle.four_wheel).to eq(true)
    expect(vehicle.big_back_wheels).to eq(true)
  end

  it "knows if its a car" do 
    vehicle_1 = Vehicle.new("pickup", true, true)
    vehicle_2 = Vehicle.new("car", true, true)

    expect(vehicle_1.car?).to eq(false)
    expect(vehicle_2.car?).to eq(true)
  end

  it "knows if its a tractor" do 
    vehicle_1 = Vehicle.new("tractor", true, true)
    vehicle_2 = Vehicle.new("car", true, true)

    expect(vehicle_1.tractor?).to eq(true)
    expect(vehicle_2.tractor?).to eq(false)
  end

  it "knows if its a pickup" do 
    vehicle_1 = Vehicle.new("pickup", true, true)
    vehicle_2 = Vehicle.new("car", true, true)

    expect(vehicle_1.pickup?).to eq(true)
    expect(vehicle_2.pickup?).to eq(false)
  end

  it "can return a boolean for four wheel drive" do 
    vehicle_1 = Vehicle.new("pickup", true, true)
    vehicle_2 = Vehicle.new("car", false, true)

    expect(vehicle_1.four_wheel_drive?).to eq(true)
    expect(vehicle_2.four_wheel_drive?).to eq(false)
  end

  it "can return a boolean for big back wheels" do 
    vehicle_1 = Vehicle.new("pickup", true, true)
    vehicle_2 = Vehicle.new("car", false, false)

    expect(vehicle_1.big_back_wheels?).to eq(true)
    expect(vehicle_2.big_back_wheels?).to eq(false)
  end
end