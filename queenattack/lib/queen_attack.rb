def queen_attack?(start_point, end_point)
  if (end_point[1] > 8) or (end_point[1] < 1) or (end_point[0] > 8) or (end_point[0] < 1)
    false
  elsif start_point[0] == end_point[0]
    true
  elsif start_point[1] == end_point[1]
    true
  elsif (start_point[1] - end_point[1]).abs === (start_point[0] - end_point[0]).abs
    true 
  else
    false
  end
end