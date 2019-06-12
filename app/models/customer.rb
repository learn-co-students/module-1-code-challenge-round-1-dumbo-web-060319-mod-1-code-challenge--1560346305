class Customer
  attr_reader :first_name, :last_name

  @@all= []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
  #given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    new_review = Review.new
    new_review.restaurant = restaurant
    new_review.customer = self
  end

  def num_reviews
  #Returns the total number of reviews that a customer has authored
    my_reviews = 0
    Review.all.map do |review|
      if review.customer == self
        my_reviews = my_reviews + 1
      end
    end
    my_reviews
  end

  def restaurants
  #Returns a unique array of all restaurants a customer has reviewed
  end

  def self.find_by_name(name)
  #given a string of a full name, returns the first customer whose full name matches
    all.find { |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
  #given a string of a first name, returns an array containing all customers with that first name
  all.select { |customer| customer.first_name == name}
  end

  def self.all_names
  #should return an array of all of the customer full names
  all.map { |customer| customer.full_name }
  end

end
