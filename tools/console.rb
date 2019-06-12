require_relative "../config/environment.rb"
require "pry"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customer => (first_name, last_name)
cust1 = Customer.new("John", "Doe")
cust2 = Customer.new("Albert", "Eisnstien")
cust3 = Customer.new("Karl", "Markx")
cust4 = Customer.new("Bill", "Clinton")

# Resturant => (name)
rest1 = Restaurant.new("La Habana")
rest2 = Restaurant.new("La Mesa")
rest3 = Restaurant.new("La Isla")
rest4 = Restaurant.new("La Terra")

# Review => (customer, restaurant, rating, content)
rev1 = Review.new(cust1, rest1, 3, "Good Food")
rev2 = Review.new(cust2, rest2, 2, "So So Food")
rev3 = Review.new(cust3, rest3, 5, "Gooood Foo")
rev4 = Review.new(cust4, rest4, 1, "Bad Food")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
