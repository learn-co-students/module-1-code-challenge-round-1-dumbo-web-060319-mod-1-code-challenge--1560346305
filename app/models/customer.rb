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

  def add_review(restaurant, content, rating)
    Review.new(customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    
  end

  def restaurants
    # Returns a unique array of all restaurants a customer has reviewed

  end

end
