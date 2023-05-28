require 'rspec'
require_relative '../lib/room'

RSpec.describe Room do 
  it 'has a name' do 
    bathroom = Room.new('bathroom')

    expect(bathroom.name).to eq('bathroom')
  end

  it 'can have a different name' do 
    bathroom = Room.new('laundry')

    expect(bathroom.name).to eq('laundry')
  end
end