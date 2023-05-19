def leap_year?(year)
  if (year.%(4).eql?(0) && year.%(100) != 0  || year.%(400).eql?(0))
    true
  else
    false
  end
end