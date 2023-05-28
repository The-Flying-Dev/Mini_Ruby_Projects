# ./amazon_order.rb
require_relative 'online_order'

class AmazonOrder
  include Order 
  # def confirmation(thing)
  #   "You got #{thing}."
  # end

  def delivery
    "Your order will arrive in 2 business days."
  end

  # def review
  #   "Please rate your order within 30 days."
  # end
end
