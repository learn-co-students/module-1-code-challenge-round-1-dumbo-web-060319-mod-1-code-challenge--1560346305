require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("kevin", "lai")
c2 = Customer.new("gracie", "smith")
c3 = Customer.new("tony", "lam")
c4 = Customer.new("kevin", "other")

r1 = Restaurant.new("cool")
r2 = Restaurant.new("house")
r3 = Restaurant.new("seas")
r4 = Restaurant.new("bigs")

rw1 = Review.new(c1, r1, "good stuff", 5)
rw1 = Review.new(c2, r1, "good st", 1)
rw1 = Review.new(c3, r3, "good stuffasdfsdfa", 4)
rw1 = Review.new(c4, r4, "goo", 3)
rw1 = Review.new(c1, r2, "good ", 3)
rw1 = Review.new(c1, r1, "good asdfsafadfadfstuff", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line