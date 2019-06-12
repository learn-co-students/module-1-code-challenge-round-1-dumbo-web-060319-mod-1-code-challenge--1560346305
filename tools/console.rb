require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new('john', 'smith')
customer2 = Customer.new('bob', 'dylan')
customer3 = Customer.new('bill', 'parcells')
customer4 = Customer.new('john', 'butts')

restaurant1 = Restaurant.new('mcdonalds')
restaurant2 = Restaurant.new('wendys')
restaurant3 = Restaurant.new('taco bell')

review1 = Review.new(customer1, restaurant1, 4, 'it was good')
review2 = Review.new(customer2, restaurant1, 1, 'it sucked')
review3 = Review.new(customer3, restaurant1, 2, 'it was ok')
review4 = Review.new(customer1, restaurant2, 3, 'it was bad')
review5 = Review.new(customer2, restaurant2, 0, 'it was really bad')
review6 = Review.new(customer4, restaurant1, 5, 'wheeeeeeeeeeeeeeeeeeeeeeeeeeeee')
binding.pry
0 #leave this here to ensure binding.pry isn't the last line