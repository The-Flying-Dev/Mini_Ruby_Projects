def clock_angle(hour, min)
  hour = hour.to_f
  min = min.to_f

  h_angle = (hour%12 + min/60) * 30
  m_angle = min * 6

  diff = (h_angle - m_angle).abs

  return diff if diff < 180 
  return 360 - diff
end

p clock_angle("12", "30")
p clock_angle("1", "10")


