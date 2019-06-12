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

  def self.find_by_name(name)
    self.all.select {|customer| customer.full_name if customer.full_name == name}.join
  end

  def self.find_all_by_first_name(name)
    self.all.find_by self.first_name
  end

  def self.all_names
    self.all.select {|customer| customer.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    Review.all.select {|review| review.restaurant if review.customer == self}.uniq
  end

end

# Customer
# Customer#add_review(restaurant, content, rating)
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# Customer#num_reviews
# Returns the total number of reviews that a customer has authored
# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed
