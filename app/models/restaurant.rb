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

  #Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
  end

  #returns an array of all reviews for that restaurant
  def reviews
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
  end

  #returns the longest review content for a given restaurant
  def longest_review
    review_content.max by 
  end

  def find_by_name(name)
    self.find_by_name(name)
  end


end
