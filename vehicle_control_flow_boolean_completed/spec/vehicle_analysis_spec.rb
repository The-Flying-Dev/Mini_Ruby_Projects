require './lib/vehicle'
require './lib/vehicle_analysis'
require 'stringio'
require 'o_stream_catcher'

RSpec.describe VehicleAnalysis do 
  it "exists" do 
    analysis = VehicleAnalysis.new

    expect(analysis).to be_an_instance_of(VehicleAnalysis)
  end

  it "knows that a pickup has four wheels" do 
    vehicle_1 = Vehicle.new("pickup", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("Vehicle has four wheels")).to eq(true)
  end

  it "knows that a car has four wheels" do 
    vehicle_1 = Vehicle.new("car", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("Vehicle has four wheels")).to eq(true)
  end

  it "knows that a tractor has four wheels" do 
    vehicle_1 = Vehicle.new("tractor", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("Vehicle has four wheels")).to eq(true)
  end

  it "does not show big back wheels for car when true" do 
    vehicle_1 = Vehicle.new("car", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(false)
  end

  it "does not show big back wheels for car when false" do 
    vehicle_1 = Vehicle.new("car", true, false)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(false)
  end

  it "can test cars have either four or two wheel drive" do 
    vehicle_1 = Vehicle.new("car", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with four wheel drive")).to eq(true)
    expect(stdout.include?("with two wheel drive")).to eq(false)
  end

  it "can test tractors dont show four or two wheel drive" do 
    vehicle_1 = Vehicle.new("tractor", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with four wheel drive")).to eq(false)
    expect(stdout.include?("with two wheel drive")).to eq(false)
  end

  it "can test tractors show big wheels if true" do 
    vehicle_1 = Vehicle.new("tractor", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(true)
  end

  it "can test tractors dont show big wheels if false" do 
    vehicle_1 = Vehicle.new("tractor", true, false)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(false)
  end

  it "can test a pickup has four wheel drive" do 
    vehicle_1 = Vehicle.new("pickup", true, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with four wheel drive")).to eq(true)
    expect(stdout.include?("with two wheel drive")).to eq(false)
  end

  it "can test pickup has two wheel drive" do 
    vehicle_1 = Vehicle.new("pickup", false, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with two wheel drive")).to eq(true)
    expect(stdout.include?("with four wheel drive")).to eq(false)
  end

  it "can test a pickup can show big back wheels when true" do 
    vehicle_1 = Vehicle.new("pickup", false, true)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(true)
  end

  it "can test a pickup doesnt show big back wheels when false" do 
    vehicle_1 = Vehicle.new("pickup", true, false)

    result, stdout, stderr = OStreamCatcher.catch do
      VehicleAnalysis.new.analyze(vehicle_1)
    end

    expect(stdout.include?("with big wheels in the back")).to eq(false)
  end
end