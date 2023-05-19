require('rspec')
require('leap_year')

describe('#leap_year?') do
  it("is false for a year not evenly divisible by 4") do
    expect(leap_year?(1993)).to(eq(false))
  end

  it("is true for years evenly divisible by 4") do
    expect(leap_year?(2004)).to(eq(true))
  end

  it("is false for years evenly divisible by 100") do
    expect(leap_year?(1900)).to(eq(false))
  end
end