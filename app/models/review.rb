class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, rating=nil, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    self.class.all << self
  end

end
