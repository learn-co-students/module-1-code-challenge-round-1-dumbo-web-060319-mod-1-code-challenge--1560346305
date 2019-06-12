class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all  
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def customers
    Review.all.select {|review| review.customer if review.restaurant == self}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    stars = []
    Review.all.each do |review|
      if review.restaurant == self
        stars << review.rating 
      end
    end
    stars.sum / stars.length
  end

  

end
