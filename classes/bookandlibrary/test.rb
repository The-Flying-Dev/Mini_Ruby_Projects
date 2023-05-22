name_array = [ 
  { @name => "harry"},
  { @name => "sally"},
  { @name => "billy"}
]


names = []

name_array.each do |named|
  names << named[@name]
end 

p name_array.map { |h| h[@name] }

#p names 