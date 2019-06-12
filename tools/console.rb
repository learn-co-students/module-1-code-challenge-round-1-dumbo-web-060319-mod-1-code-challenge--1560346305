require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = ("Eve Polastri")
customer2 = ("Emily Blunt")

review1 = ("Delicious", 5)
review2 = ("Adequate", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
