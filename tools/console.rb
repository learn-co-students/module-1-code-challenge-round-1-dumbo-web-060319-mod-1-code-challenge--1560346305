require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("John")
customer2 = Customer.new("Mike")

restaurant1 = Restaurant.new("Fratellis Trattoria")
restaurant2 = Restaurant.new("McDonalds")

review1 = Review.new(customer1, restaurant1, rating)

review2 = Review.new(customer2, restaurant2, rating)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line