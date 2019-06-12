class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    arr = []
    Review.all.each do |review|
      arr << review.customer.full_name if review.restaurant == self
    end
    arr.uniq
  end
  
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    total_star = 0
    reviews.each do |review|
      total_star += review.rating
    end
    total_star / reviews.length
  end
  
  def longest_review
    arr = []
    Review.all.each do |review|
      if review.restaurant == self
        arr << review.content
      end
    end
    arr.sort[-1]
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select {|restaurant| restaurant.name == name}
  end
  

end
