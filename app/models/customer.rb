class Customer
  attr_reader :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, content, rating)
  end

  def reviews
  	Review.all.select {|r| r.customer == self}
  end

  def num_reviews
  	reviews.length
  end

  def restaurants
  	reviews.map {|r| r.restaurant}.uniq
  end

  def self.all_names
  	all.map {|c| c.full_name}
  end

  def self.find_by_name(name)
  	all_names.find {|c| name == c}
  end

  def self.find_all_by_first_name(name)
  	all.select {|c| c.first_name == name}
  end

  def self.all
  	@@all
  end
end
