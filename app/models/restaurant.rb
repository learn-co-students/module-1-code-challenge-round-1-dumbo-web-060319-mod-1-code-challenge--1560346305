class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end 

  def customers
    # returns a unique list of all customers who have 
    # reviewed a particular restaurant.
    reviews.map { |review| review.customer }
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    reviews.map { |review| review.rating }.sum / reviews.count
  end

  def longest_review
    # returns the longest review content for a given restaurant
    reviews.map { |review| review.content }.max_by(&:length)
  end

end
