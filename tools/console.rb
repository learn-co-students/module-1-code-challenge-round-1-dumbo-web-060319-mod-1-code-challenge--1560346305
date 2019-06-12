require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("joey", "ramone")
customer2 = Customer.new("johnny", "ramone")
customer3 = Customer.new("deedee", "ramone")
customer4 = Customer.new("tommy", "ramone")

restaurant1 = Restaurant.new("cbgb")
restaurant2 = Restaurant.new("Max's Kansas City")

review1 = customer1.add_review(restaurant1,"good ol punk rock", 5)
review2 = customer2.add_review(restaurant1,"fuck joey", 3)
review3 = customer3.add_review(restaurant1,"good coke", 6)
review4 = customer3.add_review(restaurant2,"more coke at cbgb", 2)
review5 = customer3.add_review(restaurant2,"nevermind that last review, it's the same", 6)
review6 = customer4.add_review(restaurant1,"yeah it's good", 4)

Customer.all

# Customer.find_by_name
# Customer.find_all_by_first_name
Customer.all_names

Restaurant.all 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line