require('rspec')
require('scrabble')


describe("ScrabbleScore#scrabble") do 
  word_test_1 = ScrabbleScore.new("a")
  word_test_3 = ScrabbleScore.new("at")
  word_test_4 = ScrabbleScore.new("aei123")
  word_test_5 = ScrabbleScore.new("giraffe")
  word_test_6 = ScrabbleScore.new("i like dogs")  
  
  it("should return score of 1 for all 1-point letters") do
    expect(word_test_1.scrabble).to(eq(1))
  end
  it("should return score of 1 for all 1-point letters") do
    expect(word_test_3.scrabble).to(eq(2))
  end
  it("should return score of 3 for aei123") do
    expect(word_test_4.scrabble).to(eq(3))
  end
  it("should return score of 14 for giraffe") do
    expect(word_test_5.scrabble).to(eq(14))
  end
  it("should return score of  for 'i like dogs'") do
    expect(word_test_6.scrabble).to(eq(15))
  end  
end