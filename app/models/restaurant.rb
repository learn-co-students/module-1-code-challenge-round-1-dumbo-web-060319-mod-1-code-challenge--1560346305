class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
  	Review.all.select {|r| r.restaurant == self}
  end

  def customers
  	reviews.map {|r| r.customer}.uniq
  end

  def average_star_rating
  	reviews.map {|r| r.rating}.sum / reviews.length
  end

  def longest_review
  	reviews.map {|r| r.content}.sort_by {|c| c.size}[-1]
  end

  def self.find_by_name(name)
  	all.find {|r| r.name == name}
  end

  def self.all
  	@@all
  end

end
