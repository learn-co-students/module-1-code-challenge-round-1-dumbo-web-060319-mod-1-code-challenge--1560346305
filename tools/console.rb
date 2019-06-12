require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 =Customer.new("first1 ", "last2" , "fisrtttttt" , "resturant1")
customer2 =Customer.new("fisrt2", "last3" , "f2nddddt" , "resturant2")
customer3 =Customer.new("first3", "last3" , "3rdddddd" , "resturant3")


restaurant1=  Restaurant.new("1111111")
restaurant2=  Restaurant.new("2222222")
restaurant3=  Restaurant.new("3333333")

review1 = Review.new(customer1, restaurant1 ,3)
review2 = Review.new(customer2, restaurant3 ,2)
review3 = Review.new(customer3, restaurant2 ,4)
review4 = Review.new(customer3, restaurant2 ,5)
review5 = Review.new(customer3, restaurant2 ,3)
review6 = Review.new(customer2, restaurant3 ,2)
review7 = Review.new(customer1, restaurant1 ,3)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line