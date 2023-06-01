require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20, "Ali", 1)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.

    it "is_a Employee" do 
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.is_a? Employee).to be true 
    end
    
    it "has a name" do 
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.name).to eq("Ali")
    end

    it "has an ID" do 
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.id).to eq(01)
    end

    it "has total compensation" do 
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.total_compensation).to eq(36)
    end

    it "has benefits" do 
      ceo = Ceo.new(15,20, "Ali", 1)
      expect(ceo.benefits).to eq([:sick_leave, :health_insurance])
    end
  end

end