class Customer
  # extend CleanUp::ClassMethods

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

  # helper method to get all my reviews
  def my_reviews
    Review.all.select { |review| review.customer == self }
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
      self.my_reviews.count
  end


  def restaurants
    # Returns a unique array of all restaurants a customer has reviewed
    self.my_reviews.map { |review| review.restaurant }
  end

end
