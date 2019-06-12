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

  def add_review(restaurant, review, rating)
    Review.new(restaurant, self, review, rating)
  end

  def num_of_reviews
    Review.all.select {|review| review.customer == self}.length
  end

  def restaurants
    Review.all.select {|review| review.restaurant if review.customer == self}.uniq
  end

  def self.find_by_name(fullname)
    @@all.find { |customer| customer.full_name == fullname }
  end

  def self.find_all_by_first_name(firstname)
    @@all.select { |customer| customer.first_name == firstname}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name} 
  end



end
