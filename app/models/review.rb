class Review
  attr_reader :restaurant, :customer, :content, :rating

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end
  
end

