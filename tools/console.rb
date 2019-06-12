require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#customers
customer1=Customer.new("samip", "sharma")
customer2=Customer.new("biraj", "sapkota")
customer3=Customer.new("samip", "sapkota")
customer4=Customer.new("biraj", "sharma")
customer5=Customer.new("biraj", "sharma")

#restaurants
rest1=Restaurant.new("M.C")
rest2=Restaurant.new("spanish food")

#reviews
review0=Review.new(customer1,rest1,4,"hi")
review1=Review.new(customer1,rest2,5,"awesome food")
review2=Review.new(customer2,rest1,4,"awesome price")
review3=Review.new(customer2,rest2,5,"love it")
review4=Review.new(customer3,rest1,2,"I dont like the taste")
review5=Review.new(customer4,rest2,5,"no comments")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
