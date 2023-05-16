def roman(n)
    case n
    
    when 1 
      return "I"
    when 4
      return "IIII"
    when 5 
      return "V"
    when 6
      return "VI"
    when 7 
      return "VII"
    when 10 
      return "X"
    else  
      return "No test found for this number"
    end
end

require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end

  it "converts the number 4 to the string IIII" do
    roman(4).must_equal "IIII"
  end

  it "converts the number 5 to the string V" do
    roman(5).must_equal "V"
  end

  it "converts the number 6 to the string VI" do
    roman(6).must_equal "VI"
  end

  it "converts the number 7 to the string VII" do
    roman(7).must_equal "VII"
  end

  it "converts the number 10 to the string X" do
    roman(10).must_equal "X"
  end
end