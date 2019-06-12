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
    new_review = Review.new()
    new_review.restaurant = 
    new_review.content = content
    new_review.rating = rating
  end

  def num_reviews
    review_total = 0
    Review.all.each do |r|
      if r.customer == self
        review_total += 1
      end
    end

    return review_total
  end
  
  # helper method
  def customer_restaurants
    Review.all.select { |r| r.customer == self }
  end

  def restaurants
    self.customer_restaurants.map { |r| r.restaurant }.uniq
  end

  def self.find_by_name(name)
    self.all.find { |c| "#{c.first_name} + #{c.last_name}" == self.full_name }
  end

  def self.find_all_by_first_name(name)

  end

  def self.all_names

  end
end
