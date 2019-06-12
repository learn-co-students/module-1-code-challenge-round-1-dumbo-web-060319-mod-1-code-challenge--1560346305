class Customer
  attr_reader :first_name, :last_name
  @@all = []

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
  	new_review = Review.new(self, restaurant, content, rating)
  end

  def customer_reviews
  	Review.all.select {|review| review.customer == self}
  end

  def num_reviews
  	customer_reviews.size
  end

  def restaurants
  	customer_reviews.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
  	self.all.find {|customer| name == customer.full_name}
  end

  def self.find_all_by_first_name(name)
  	self.all.select {|customer| name == customer.first_name}
  end

  def self.all_names
  	self.all.map {|customer| customer.full_name}
  end
end
