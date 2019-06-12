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

  def add_review(restauraunt, content, rating)
    Review.new(restauraunt, self, content, rating)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self}.length
  end

  def restauraunts
    # Review.all.select { |review| review.customer == self}
    arr = []
    Review.all.each do |review|
      if review.customer == self
        arr << review.restaurant
      end
    end
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

end
