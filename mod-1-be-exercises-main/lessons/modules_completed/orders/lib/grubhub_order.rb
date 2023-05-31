# ./grubhub_order.rb
require_relative 'online_order'

class GrubhubOrder
  include Order 
  # def confirmation(thing)
  #   "You got #{thing}."
  # end

  def delivery
    "Your food will arrive in 45-60 minutes."
  end

  # def review
  #   "Please rate your order within 30 days."
  # end
end
