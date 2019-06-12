require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jim = Customer.new("Jimmy",  "Neutron")
tim = Customer.new("Timmy", "Turner")
kim = Customer.new("Kim", "Possible")

la = Restaurant.new("La Villa")
aoc = Restaurant.new("A.O.C.")
kk = Restaurant.new("The Krusty Krab")
cb = Restaurant.new("The Chum Bucket")

kim.add_review(aoc, "mmm so good", 5)
kim.add_review( la,  "Best food. Came here with Ron.", 5)
kim.add_review( kk,  "Burgers are bomb.", 5)
kim.add_review( cb,  "This is NOT the sitch.", 1)

tim.add_review( aoc,  "I Wish the fries had a little more salt!", 3)
tim.add_review( la,  "I Wish I didn't have to wait so long to get seated!", 4)
tim.add_review( kk,  "I Wish I had a second stomach!", 5)
tim.add_review( cb,  "I wish i didn't have to barf anymore!", 1)

jim.add_review( aoc,  "My Taste buds are Tingling!!", 4)
jim.add_review( la,  "It's okay...", 3)
jim.add_review( kk,  "CARL, YOU GOTTA COME HERE!", 5)
jim.add_review( cb,  "Gross! Gotta BLAST!", 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line