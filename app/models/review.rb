class Review
attr_reader :restaurant, :content, :rating, :name
@@all = []

  def initialize(restaurant, content, rating, name)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @name = name
    @@all << self
  end

  # Review#customer
  # returns the customer object for that given review
  # Once a review is created, I should not be able to change the author

def customer
  @name
end

# Review#restaurant
# returns the restaurant object for that given review
# Once a review is created, I should not be able to change the restaurant

def restaurant
  @restaurant
end

# Review#rating
# returns the star rating for a restaurant. This should be an integer from 1-5

def rating
  Review.all.each do |rest|
    if rest.restaurant == self
      a << rest.rating
    end
  end
  return a/a.length  
end

# Review#content
# returns the review content, as a string, for a particular review

def content
  @content
end

  def self.all
    @@all
  end

end
