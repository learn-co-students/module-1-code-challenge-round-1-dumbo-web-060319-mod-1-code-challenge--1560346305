require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mcd = Restaurant.new("mcdonalds")
wendys = Restaurant.new("wendys")
burgerking = Restaurant.new("BK")
anothermcd = Restaurant.new("mcdonalds")

brandon = Customer.new("brandon", "lau")
grace = Customer.new("Grace", "li")
justin = Customer.new("Justin", "Forgot")

brandon.add_review(mcd, "Great place", 5)
brandon.add_review(wendys, "Not such a great place", 2)
grace.add_review(mcd, "ew I would never ever go here in my life", 3.3)

a= for x in Review.all do 
  puts x.content
end
a

binding.pry
0 #leave this here to ensure binding.pry isn't the last line