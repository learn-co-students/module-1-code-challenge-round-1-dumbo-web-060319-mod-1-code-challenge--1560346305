require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customers
sam = Customer.new("Sam","Smith")
tom = Customer.new("Tom","Smith")
sara = Customer.new("Sara","Smith")

#Restaurants
gogo = Restaurant.new("Gogo")
bocco = Restaurant.new("Bocco")

#Reviews
rev_two = Review.new(sam, gogo, 4, "GREAT!")
rev_one = Review.new(sam, bocco, 1, "It was good")
rev_three = Review.new(sam, bocco, 3, "Better this time!")
rev_three = Review.new(tom, bocco, 3, "Better this time!")
rev_three = Review.new(sara, bocco, 3, "Better this time!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
