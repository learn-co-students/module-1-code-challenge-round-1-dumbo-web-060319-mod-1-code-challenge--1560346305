require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer_1 = Customer.new("Garrett", "Halstein")
customer_2 = Customer.new("Logan", "Schwartz")
customer_3 = Customer.new("Garrett", "Ross")
customer_4 = Customer.new("Garrett", "Richard")
customer_5 = Customer.new("Alex", "Hamza")

restaurant_1 = Restaurant.new("Chille's")
restaurant_2 = Restaurant.new("Dumbo Taco")
restaurant_3 = Restaurant.new("Outback")
restaurant_4 = Restaurant.new("Food Place")
restaurant_5 = Restaurant.new("Pedro's")

customer_1.add_review(restaurant_5, "It was good", 5)
customer_2.add_review(restaurant_4, "It was bad", 1)
customer_2.add_review(restaurant_2, "It was ight", 3)
customer_3.add_review(restaurant_5, "It was okay", 4)
customer_5.add_review(restaurant_4, "It was eh", 2)
customer_4.add_review(restaurant_3, "It was decent", 3)
customer_3.add_review(restaurant_1, "It was great", 4)
customer_4.add_review(restaurant_5, "It was awesome", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line