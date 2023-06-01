require './lib/sales_manager'

RSpec.describe SalesManager do 
  describe "setup" do 
    it "exists" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager).to be_a SalesManager
    end

    it "has base_salary and estimated_annual_sales attributes" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.base_salary).to eq(10)
      expect(sales_manager.estimated_annual_sales).to eq(150)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a SalesManager instance can have a Name and ID number, like any other Employee.
    # Also, the SalesManager should be able to receive a total compensation. Write at least one test that proves they can access this method.

    it "is_a Employee" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.is_a? Employee).to be true 
    end
    
    it "has a name" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.name).to eq("Jim")
    end

    it "has an ID" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.id).to eq(3)
    end

    it "has total compensation" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.total_compensation).to eq(25)
    end

    it "has benefits" do 
      sales_manager = SalesManager.new(10, 150, "Jim", 3)
      expect(sales_manager.benefits).to eq([:sick_leave, :golf_with_clients])
    end
  end
end