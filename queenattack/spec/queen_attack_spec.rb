require 'rspec'
require 'queen_attack'

describe ('#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect(queen_attack?(([1,1]), ([2,3]))).to(eq(false))
  end
  it('is true if the cooridinates are horizontally in line with each other') do
    expect(queen_attack?(([1,1]), ([1,2]))).to(eq(true))
  end
  it('is true if the coordinates are vertiaclly in line with each other') do
    expect(queen_attack?(([1,1]), ([2,1]))).to(eq(true))
  end
  it('is true if the coordinates are horizontally in line with each other') do
    expect(queen_attack?(([1,1]), ([2,2]))).to(eq(true))
  end
  it('is true if the coordinates are horizontally in line with each other') do
    expect(queen_attack?(([2,2]), ([1,1]))).to(eq(true))
  end
  it('is true if the coordinates are horizontally in line with each other going the other direction') do
    expect(queen_attack?(([2,1]), ([1,2]))).to(eq(true))
  end
  it('is false if the coordinates are off of the board') do
    expect(queen_attack?(([2,1]), ([0,2]))).to(eq(false))
  end
end