#require 'rspec'
require './lib/painter'
require './lib/paint'

describe Painter do
  # Allowed specs to share instance variable
  before :context do
    @name = "Bob Ross"
  end 
  it 'test_it_exists' do
    the_painters_name = "Bob Ross"
    painter = Painter.new(the_painters_name)

    expect(painter).to be_a(Painter)
  end

  it 'test_it_has_a_name1' do
    # Needed to reassign variable
    the_painters_name = "Bob Ross"
    painter = Painter.new(the_painters_name)

    expect(painter.name).to eq("Bob Ross")
  end

  it 'test_it_has_a_name2' do
    painter = Painter.new("Bob Ross")      
    # Used before :context
    expect(@name).to eq("Bob Ross")
    # Called name method on class Instance
    #expect(painter.name).to eq("Bob Ross")
  end

  it 'test_it_has_a_name3' do
    bob_ross = Painter.new("Bob Ross")
	# Created new class Instance
    #painter = Painter.new("Bob Ross")
    #expect(painter.name).to eq("Bob Ross")
	# Called name method on bob_ross Instance 
	expect(bob_ross.name).to eq("Bob Ross")
  end

  it 'test_it_can_give_greeting' do
    painter = Painter.new("Bob Ross")

    #expect(greeting).to eq("Hello, I'm Bob Ross")
    expect(painter.greeting).to eq("Hello, I'm Bob Ross")
  end

  it 'test_it_can_give_greeting_again' do
    painter = Painter.new("Bob Ross")

    expect(painter.greeting).to eq("Hello, I'm Bob Ross")
  end

  it 'test_it_starts_with_no_paint' do
    painter = Painter.new("Bob Ross")
    # added :paints to attr_reader
    expect(painter.paints).to eq([])
  end

  it 'test_it_can_add_all_paints' do
    painter = Painter.new("Bob Ross")
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")
    # Needed to pass in arguments
    # painter.add_all_paints
    painter.add_all_paints(paint_1, paint_2)

    expect(painter.get_paints).to eq([paint_1, paint_2])
  end

  it 'test_it_can_add_paints' do
    painter = Painter.new("Bob Ross")
    # Create instances of the Paint class
    paint_1 = Paint.new("Alizarin Crimson") 
    paint_2 = Paint.new("Van Dyke Brown") 
    painter.add_paint(paint_1)
    painter.add_paint(paint_2)

    expect(painter.get_paints).to eq([paint_1, paint_2])
  end

  it 'test_it_can_add_paints_again' do
    painter = Painter.new("Bob Ross")
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")
    painter.add_paint(paint_1)
    painter.add_paint(paint_2)

    expect(painter.get_paints).to eq([paint_1, paint_2])
  end

  it 'test_it_can_add_paints_third_try' do
    painter = Painter.new("Bob Ross")
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")
    # Arguments passed to add_paint were incorrectly named
    # painter.add_paint(paint)
    # painter.add_paint(paint)
    painter.add_paint(paint_1)
    painter.add_paint(paint_2)

    expect(painter.get_paints).to eq([paint_1, paint_2])
  end

  it 'test_it_can_get_paint_names' do
    painter = Painter.new("Bob Ross")
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")
    painter.add_paint(paint_1)
    painter.add_paint(paint_2)
    # Needed to pass Instances of the Paint class rather than the String values that were assigned
    # expected = ["Alizarin Crimson", "Van Dyke Brown"]
    expected = [paint_1, paint_2]
    expect(painter.get_paints).to eq(expected)
  end
end
