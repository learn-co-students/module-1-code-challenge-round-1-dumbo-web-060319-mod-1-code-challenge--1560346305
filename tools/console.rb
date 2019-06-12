require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurnat.new("A")
rest1 = Restaurnat.new("B")
rest1 = Restaurnat.new("C")

rev1 = Review.new(res1, "good", 4, cust1)
rev2 = Review.new(res2, "bad", 6, cust2)
rev3 = Review.new(res1, "not bad", 4, cust3)

cust1 = Customer1.new("Bob", "Mac")
cust2 = Customer1.new("Anna", "Fry")
cust3 = Customer1.new("Den", "Loo")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
