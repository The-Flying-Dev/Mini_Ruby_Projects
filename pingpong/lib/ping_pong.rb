def ping_pong(n)
  nums_array = []
  numbers = 1..n.to_i 

  numbers.each do |digit|
    #divisible_by_3 = digit.%(3).eql?(0)
    #divisible_by_5 = digit.%(5).eql?(0)
    if digit.%(3).eql?(0) && digit.%(5).eql?(0)
      nums_array << "ping-pong"
    elsif digit.%(3).eql?(0)
      nums_array << "ping"
    elsif digit.%(5).eql?(0)
      nums_array << "pong"
    else  
      nums_array << digit
    end
  end
  nums_array
end

puts ping_pong(30)
=begin
  def ping_pong(n)
    nums_array = []
    (1..n).to_a.each do |num|
      if num.%(3).eql?(0)
        nums_array.push("ping")
      elsif   
        nums_array.push(num)
      end
    end
    nums_array
  end  
=end