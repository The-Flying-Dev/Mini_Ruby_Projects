## This module is included for your practice in figuring out how modules can be used in conjunction with class methods. Be careful of your scoped variables! 

module Barkable

  def bark
    puts "#{@name} says, 'bark'."
    # "#{@name} says, 'bark'."  => remove puts when testing as last line evaluated is nil due to $stdout global variable
  end

end