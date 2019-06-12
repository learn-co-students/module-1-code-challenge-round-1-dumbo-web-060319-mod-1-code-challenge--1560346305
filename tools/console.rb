require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("blossom")
rest2 = Restaurant.new("dirt candy")
rest3 = Restaurant.new("ja ja ja")

customer1 = Customer.new("abril")
customer2 = Customer.new("orian")

review1 = Review.new("rev1", rest1, customer2)
review2 = Review.new("rev2", rest2, customer1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line