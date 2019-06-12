class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end 

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
  # given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  
  def num_reviews
    self.reviews.count
  end 
  # Returns the total number of reviews that a customer has authored
  
  def restaurants
    self.reviews.map { |review| review.restaurant}
  end 
  # Returns a unique array of all restaurants a customer has reviewed

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end 
  # given a string of a full name, returns the first customer whose full name matches

  def self.find_all_by_first_name(name)
    self.all.find { |customer| customer.first_name == name }
  end 
  # given a string of a first name, returns an array containing all customers with that first name

  def self.all_names
    self.all.map { |customer| customer.full_name } 
  end 
  # should return an array of all of the customer full names

end
