# The method below returns an array of the brothers names in all caps using the method #each.
# # Your Task: Update this method to use #map. 

def kennedy_brothers
  brothers = ["Robert", "Ted", "Joseph", "John"]
  #brothers.map { |brother| brother.upcase }
  brothers.map do |brother|
    brother.upcase
  end

  #caps_brothers = []
  
  #brothers.each do |brother|
  #  caps_brothers << brother.upcase
  #end
  
  #caps_brothers
end

p kennedy_brothers