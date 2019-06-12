require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joe = Customer.new("Joe", "Smith")
tom = Customer.new("Tom", "Brown")
joe2 = Customer.new("Joe", "Thompson")

rest1 = Restaurant.new("McDonalds")
rest2 = Restaurant.new("Chili's")
rest3 = Restaurant.new("Applebee's")

joe.add_review(rest1, "Very nasty", 2)
joe.add_review(rest3, "Decent", 5)
tom.add_review(rest1, "I LOVE IT SOO SOOO MUCH", 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line