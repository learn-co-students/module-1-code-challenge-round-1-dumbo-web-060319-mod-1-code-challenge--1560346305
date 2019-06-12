require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

beto = Customer.new("Beto", "Dute")
tito = Customer.new("Tito", "Pito")
pepe = Customer.new("Pepe", "Lele")

mexican = Restaurant.new("Mexican")
ethiopian = Restaurant.new("Ethiopian")
korean = Restaurant.new("Korean")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line