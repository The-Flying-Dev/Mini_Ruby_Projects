require('rspec')
require('title_case')

describe('#title_case') do 
  it("capitalizes the first letter of a word") do
    expect(title_case("beowulf")).to(eq("Beowulf"))
  end
end

describe('#title_case_sentence') do 
  it("capitalizes the first letter of all words in a multiple word title") do 
    expect(title_case_sentence("the color purple")).to(eq("The Color Purple"))
  end
end