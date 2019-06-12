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

  def self.find_by_name(name)
    if self.all.find_by self.name = name
      self.name
    end
  end 

  def customers
    Review.all.select {|review| review.customer if review.restaurant == self}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    review_array = reviews.select {|review| review.rating}
    review_array.inject(0, :+) / review_array.count
  end

  def longest_review
    reviews.sort_by {|review| review.content}[-1]
  end

end

#   Restaurant
# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
# Restaurant#longest_review
# returns the longest review content for a given restaurant
