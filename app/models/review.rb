class Review
  attr_reader :customer, :restaurant, :content
  @@all = []

  def initialize (customer, restaurant, content, rating)
  	@customer = customer
  	@restaurant = restaurant
  	@content = content
  	@rating = rating.to_f
  	@@all << self
  end

  def rating
  	if @rating > 5.0
  	  return 5
  	elsif @rating < 1
  	  return 1.0
  	else
  	  return @rating
  	end
  end
  
  def self.all
    @@all
  end
end

