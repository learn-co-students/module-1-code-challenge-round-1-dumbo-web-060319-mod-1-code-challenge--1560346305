require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Joe", "Smith")
customer2 = Customer.new("Evelyn", "Lopez")
customer3 = Customer.new("Alex", "Milan")
customer4 = Customer.new("Carla", "Martinez")


restaurant1 = Restaurant.new("ThaiLand")
restaurant2 = Restaurant.new("Yokomo")
restaurant3 = Restaurant.new("Cookieland")
restaurant4 = Restaurant.new("Riverland")

review1 = Review.new(restaurant2, customer3, 4)
review2 = Review.new(restaurant3, customer1, 5)
review3 = Review.new(restaurant2, customer4, 2)
review4 = Review.new(restaurant1, customer4, 1)
review5 = Review.new(restaurant4, customer4, 3)
review6 = Review.new(restaurant3, customer2, 3)
review6 = Review.new(restaurant3, customer2, 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line