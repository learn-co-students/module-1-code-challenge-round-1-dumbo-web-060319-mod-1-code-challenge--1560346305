class Restaurant
  attr_reader :name
@@all << self

  def initialize(name)
    @name = name
    @@all << self
  end

  # Restaurant#customers
  # Returns a unique list of all customers who have reviewed a particular restaurant.

def customers
  Review.all.select {|rest| rest.restaurant == self}.map {|rest| rest.name}.uniq
end

  # Restaurant#reviews
  # returns an array of all reviews for that restaurant
def reviews
  a = []
  Review.all.each do |rest|
    if rest.restaurant == self
      a << rest
    end
  end
  return a
end

# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews

def average_star_rating1
  Review.all.each {|rest| rest.restaurant == self }.
end

def average_star_rating2
  average_star_rating1.each {|rest| rest.rating}
end

def average_star_rating

end

# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches

def self.find_by_name(name)
  @@all.find {|rest| rest.name == name}
end



  def self.all
    @@all
  end

end
