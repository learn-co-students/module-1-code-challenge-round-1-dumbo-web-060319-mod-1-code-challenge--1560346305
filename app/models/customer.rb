class Customer
  attr_reader :first_name, :last_name, :full_name 

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #helper method
  def reviews 
    Review.all.select { |review| review.customer == self }
  end

  def num_reviews 
    reviews.length
  end

  def restaurants 
    reviews.map { |review| review.restaurant }.uniq
  end



  #class methods 
  def self.all 
    @@all
  end

  def self.find_by_name(name) #full_name 
    @@all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    @@all.select { |customer| customer.first_name == name }
  end

  def self.all_names 
    @@all.map { |customer| customer.full_name }
  end

end
