class Student 
  def initialize(name)
    @name = name
    @cookies = []
  end

  def name   
    case @name.is_a? String 
    when true 
      @name
    else  
      'Default Name Assigned'
    end
  end

  def cookies 
    @cookies
  end

  def add_cookie(cookie)
    @cookies.push(cookie)
  end
end