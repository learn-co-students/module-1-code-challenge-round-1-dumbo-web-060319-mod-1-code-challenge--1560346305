require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Jon", "Snow")
customer2 = Customer.new("Sansa", "Stark")
customer3 = Customer.new("Petyr", "Baelish")
customer4 = Customer.new("Cersei", "Lannister")
customer5 = Customer.new("Jon", "Umber")

restaurant1 = Restaurant.new("In n' Out")
restaurant2 = Restaurant.new("Taco Bell")
restaurant3 = Restaurant.new("MacDolands")
restaurant4 = Restaurant.new("Bormgur Kong")
restaurant5 = Restaurant.new("Wendiez")

review1 = Review.new(customer1, restaurant1)
review2 = Review.new(customer2, restaurant2)
review3 = Review.new(customer3, restaurant3)
review4 = Review.new(customer4, restaurant4)
review5 = Review.new(customer5, restaurant1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line