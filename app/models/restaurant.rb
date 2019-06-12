class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def customers
    #Returns a unique list of all customers who have reviewed a particular restaurant.
    Review.map { |review| customer.review }.uniq 
  end 

  def reviews
    #returns an array of all reviews for that restaurant
    Review.all.select { |review| restaurant.review == self }
  end 

  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
    total_star_rating = 0 
    num_of_ratings = 0

    @@all.reviews do |ratings|
      total_star_rating += star_rating
      num_of_ratings += 1
    end 
    total_star_rating/num_of_ratings
  end 

  def longest_review
    #returns the longest review content for a given restaurant
    reviews.map { |review| restaurant.review }.max 
  end 


  def self.all
    @@all 
  end 

  def restaurant.find_by_name(name)
    #given a string of restaurant name, returns the first restaurant that matches
    restaurant.find { |restaurant| restaurant.name == self }

  end 

end
