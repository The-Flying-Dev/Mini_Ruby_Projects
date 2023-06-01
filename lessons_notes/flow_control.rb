# Using times, while, until and loop, print “Beetlejuice” to the terminal 3 times.

# times
3.times do 
  p "Beetlejuice"
end

# while
counter = 0
while counter < 3
  p "Beetlejuice"
  counter += 1
end

# until 
count = 3 
until count == 0
  p "Beetlejuice"
  count -= 1
end

# loop
count = 0
loop do 
  p "Beetlejuice" 
  count += 1    
  if count == 3 
    break
  end
end