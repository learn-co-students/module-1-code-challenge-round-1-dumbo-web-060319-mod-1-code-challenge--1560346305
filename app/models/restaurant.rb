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

  # Helper method; returns reviews associated with a particular restaurant
  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    reviews.map { |review| review.rating }.sum / reviews.length
  end

  def review_content
    reviews.collect { |review| review.content }
  end

  def review_content_lengths
    reviews.map { |review| review.content.length }
  end

  def longest_review
    max_length = review_content_lengths.max
    review_content.select { |content| content.length == max_length }
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end
end

# Review (customer, restaurant, rating, content)

# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.

# Restaurant#reviews
# returns an array of all reviews for that restaurant

# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews

# Restaurant#longest_review
# returns the longest review content for a given restaurant

# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
