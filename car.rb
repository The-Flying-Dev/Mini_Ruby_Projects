class Car 

  def drive 
    "The car is now driving!"
  end

  def stop
    "The car has now stopped!"
  end

end


RSpec.describe Car do 

  it 'creates a car class' do 
    car = Car.new 
    expect(car).to be_kind_of(Car)
  end

  it 'drives' do 
    car = Car.new 
    expect(car).to respond_to(:drive)
  end

  it 'responds positively to the drive message' do 
    car = Car.new 
    expect(car.drive).to eq "The car is now driving!"
  end

  it 'stops' do 
    car = Car.new 
    expect(car).to respond_to(:stop)
  end

  it 'responds positively to the stop message' do 
    car = Car.new 
    expect(car.stop).to eq "The car has now stopped!"
  end
end