# Research and demonstrate the following enumerables syntax, return value, and best use case.

#max     # => Returns element or elements( if n is passed as an argument max(n) ) with the maximum value/s in an Array in descending order
         # if no block is given then values are based on numeric or alphabetic order 
#min     # => Returns element or elements( if n is passed as an argument min(n) ) with the minimum value/s in a sorted Array
         # if no block is given then values are based on numeric or alphabetic order 
#max_by  # => Returns element that gives the maximum value from the block 
         # can be passed an Argument max_by(n) -> Returns n elements in Array in descending order
#min_by  # => Returns element that gives the minimum value from the block,
         # => can be passed an Argument min_by(n) -> Returns n elements in Array sorted by value in the given block
#sort_by # => Sorts Collection according to the condition within the block, 
         # can be unpredictable when 2 or more elements share the same result of the block
#all?    # => Returns true if all elements meet the given condition / 
         # if no block given then ruby adds implicit block { |obj| obj } returns true if no elements are false or nil
#any?    # => Returns true if atleast 1 element meets the given condition / 
         #if no block given then ruby adds implicit block { |obj| obj } returns true if no elements are false or nil
#none?   # => Returns true if no elements meet given condition / 
         #if no block given then ruby adds implicit block { |obj| obj } returns true if no elements are true
#one?    # => Returns true if exactly one element meets the condition / 
         #if no block given then ruby adds implicit block { |obj| obj } returns true if only one element is true