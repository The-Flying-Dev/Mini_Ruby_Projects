class String 
  def leetspeak
    self
      .gsub('e', '3')
      .gsub('o', '0')
      .gsub('I', '1')
      .gsub(/(?!\b)s/, 'z')
  end
end  
  # def leetspeak
  #   obj_arr = Array.new
  #   self.each_with_index do |c, index|
  #     if c == "e"        
  #       obj_arr.push(3)
  #     elsif c == "o"  
  #       obj_arr.push(0)
  #     elsif c == "I"  
  #       obj_arr.push(1)
  #     elsif (c == "s") && index != 0
  #       obj_arr.push("z")
  #     else  
  #       obj_arr.push(c)
  #     end
  #   end
  #   p obj_arr.join("")
  # end



p "hello".leetspeak