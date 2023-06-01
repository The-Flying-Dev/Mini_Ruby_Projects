require './lib/circle'

RSpec.describe Circle do 
  it "exists" do
    c = Circle.new("red", 15)
  end

  it "has color attribute" do
    c = Circle.new("red", 15)
    expect(c.color).to eq("red")    
  end


  it "is_a Shape" do 
    c = Circle.new("red", 15)
    expect(c.is_a? Shape).to be true 
  end

  it "has radius attribute" do 
    c = Circle.new("red", 15)     
    expect(c.radius).to eq(15)
  end  
  
  # it "has a circumference" do 
  #   c = Circle.new("red", 15)
  #   expect(c.circumference).to eq(94.2)
  # end

  it "can calculate perimeter" do
    c = Circle.new("red", 15)
    expect(c.perimeter).to eq(94.2)
  end

  it "has a diameter" do 
    c = Circle.new("red", 15)
    expect(c.diameter).to eq(30)
  end

  it "can calculate area" do
    c = Circle.new("red", 15)
    expect(c.area).to eq(706)
  end

  it "has a default family" do 
    c = Circle.new("red", 15)
    expect(c.default_family).to eq('This is a Geometric Shape')
  end

  it "has no length" do 
    c = Circle.new("red", 15)
    expect(c.length).to eq(nil)
  end
  
  it "has no width" do 
    c = Circle.new("red", 15)
    expect(c.width).to eq(nil)
  end 
  
end

# RSpec.describe Circle do 
#   describe "setup" do 
#     describe "exists" do 
#       c = Circle.new("red", 15)      
#     end

#     it "has radius attribute" do 
#       c = Circle.new("red", 15)     
#       expect(c.radius).to eq(15)
#     end

#     it "has a circumference" do 
#       c = Circle.new("red", 15)
#       expect(c.circumference).to eq(94.2)
#     end

#     it "has a diameter" do 
#       c = Circle.new("red", 15)
#       expect(c.diameter).to eq(30)
#     end

#     it "has a area" do 
#       c = Circle.new("red", 15)
#       expect(c.area).to eq(706)
#     end
#   end  
  
#   describe "it is a Shape" do

#     it "it is_a Shape" do 
#       c = Circle.new("red", 15)
#       expect(c.is_a? Shape).to be true
#     end

#     it "has a color" do 
#       c = Circle.new("red", 15)
#       expect(c.color).to eq("red")
#     end

#     it "has no length" do 
#       c = Circle.new("red", 15)
#       expect(c.length).to eq(nil)
#     end

#     it "has no width" do 
#       c = Circle.new("red", 15)
#       expect(c.width).to eq(nil)
#     end

#     it "has a default family" do 
#       c = Circle.new("red", 15)
#       expect(c.default_family).to eq('This is a Geometric Shape')
#     end

#   end

#   # it "has radius attribute" do 
#   #   c = Circle.new("red", 15)     
#   #   expect(c.radius).to eq(15)
#   # end

#   # it "has a circumference" do 
#   #   c = Circle.new("red", 15)
#   #   expect(c.circumference).to eq(94.2)
#   # end

 
# end