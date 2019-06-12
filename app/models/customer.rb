class Customer
  attr_accessor :first_name, :last_name, :review, :review_content, :star_rating
  @all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @review = review
    @review_content = review_content
    @star_rating = star_rating
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  #given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(customer, restaurant)
    review = Review.new(review_content, star_rating)
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    customer.Review.all map do |review|
      customer.review = self
    end
  end

  #Returns a unique array of all restaurants a customer has reviewed
  def restaurants

  end

  #given a string of a full name, returns the first customer whose full name matches
  def find_by_name(name)
    self.find_by_name(name)
    if customer.full_name == self
      customer.full_name
    end
  end

  #given a string of a first name, returns an array containing all customers with that first name
  def find_all_by_first_name(first_name)
    self.find_all_by_first_name(first_name)
  end

  def all_names
    self.all_names
  end

end
