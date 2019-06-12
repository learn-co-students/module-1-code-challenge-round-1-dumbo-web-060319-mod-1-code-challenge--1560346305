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

  def reviews
      Review.all.select { |review| review.restaurant == self }
  end 

  def customers
    self.reviews.map { |review| review.customer}.uniq
  end 
  # Returns a unique list of all customers who have reviewed a particular restaurant.

  def average_star_rating
    total = 0
    count = 0
    self.reviews.each do |review|
      total += review.rating
      count += 1
    end
    return total/count
  end 
  # returns the average star rating for a restaurant based on its reviews

  def longest_review
    longest_string = 0
    self.reviews.each do |review|
      longest_string = review.content.length
      review.content.length == longest_string
        return review.content
    end 
  end 
  # returns the longest review content for a given restaurant

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end
  # given a string of restaurant name, returns the first restaurant that matches

end
