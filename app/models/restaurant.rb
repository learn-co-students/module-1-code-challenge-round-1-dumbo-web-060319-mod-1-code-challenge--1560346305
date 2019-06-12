class Restaurant
  attr_reader :name, :restaurant, :customer

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end



end
