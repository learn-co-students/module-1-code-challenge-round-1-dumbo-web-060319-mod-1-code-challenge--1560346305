class Restaurant
  attr_reader :name, :stars, :review

  @all = []

  def initialize(name, stars)
    @name = name
    @stars = stars
    @all << self
  end

  def self.all
    @all
  end

   #Returns a **unique** list of all customers who have reviewed a 
  def customers
    reviews.map do |review|
      review.customers.uniq
    end
  end

  
  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
     review.restaurant == self
    end
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    average_stars = 0
    reviews.each do |review|
      average_stars += restaurant.stars
    end
    average_stars/reviews.length
end

  #returns the longest review content for a given restaurant
  def longest_review
    arr = []
    reviews.each do |review|
      arr < review.count
    end
    arr.sort[-1]
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.select do |restaurant|
      restaurant == restaurant.name
    end 
  end

end
