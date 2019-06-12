require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

richard = Customer.new("Richard", "Li")
garrett = Customer.new("Garrett", "Xas")
hamza = Customer.new("Hamza", "Wsa")
dom = Customer.new("Dominic", "Vinas")

rest1 = Restaurant.new("Rest1")
rest2 = Restaurant.new("Rest2")
rest3 = Restaurant.new("Rest3")
rest4 = Restaurant.new("Rest4")

review1 = richard.add_review(rest1, "Good", 4)
review2 = garrett.add_review(rest2, "Bad", 2)
review3 = hamza.add_review(rest1, "Execellent", 5)
review4 = richard.add_review(rest3, "Okay", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line