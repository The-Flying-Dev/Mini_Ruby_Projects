# Add the 2 requires you will need here
require 'rspec'
require './lib/student'


describe Student do
  before(:each) do 
    student = Student.new('Penelope')
  end
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')
      expect(student).to be_a Student      
    end
    # test it has a name
    it 'has a name' do 
      student = Student.new('Penelope')
      expect(student.name).to eq 'Penelope'
    end
    # test it has a different name
    it 'has a different name' do 
      student = Student.new('James')
      expect(student.name).to eq 'James'
    end
    # test edgecase for name # => it has a default name
    it 'assigns a default name' do 
      student = Student.new(42)
      expect(student.name).to eq 'Default Name Assigned'
    end
    # test it has cookies
    it 'has cookies by default' do 
      student = Student.new('Penelope')
      expect(student.cookies).to eq [] 
    end    
  end
  # test it can add cookies
  describe '#add_cookie' do
    it 'adds cookie to the cookies array' do 
      student = Student.new('Penelope')
      student.add_cookie('Chocolate Chip')
      student.add_cookie('Vanilla')
      expect(student.cookies).to eq ['Chocolate Chip', 'Vanilla']
    end
  end
end
