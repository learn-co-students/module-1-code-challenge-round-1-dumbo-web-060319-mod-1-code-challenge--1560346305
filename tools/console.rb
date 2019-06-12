require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


customer1 = Customer.new("Franchely", "Portorreal")
customer2 = Customer.new("Melina", "Crisostomo")
customer3 = Customer.new("Adi", "Sierra")
customer4 = Customer.new("Adi", "Smith")

restaurant1 = Restaurant.new("The Smith")
restaurant2 = Restaurant.new("Applebee's")
restaurant3 = Restaurant.new("Olive Garden")

# review1 = customer1.add_review(restaurant1, "4 out of 5", 4)

# review1 = Review.new(restaurant1, customer1, 4, "4 out of 5")
# review2 = Review.new(restaurant2, customer2, 1, "1 out of 5")
# review3 = Review.new(restaurant3, customer3, 3, "3 out of 5")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line