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

  def reviews
  	Review.all.select {|review| review.restaurant == self}
  end

  def customers
  	reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
  	reviews.map {|review| review.rating}.sum / reviews.size
  end

  def longest_review
  	longest = "";
  	reviews.each {|review| 
  	  if review.content.size > longest.size
  	    longest = review.content
  	  end
  	}
  	longest
  end

  def self.find_by_name(name)
  	self.all.find {|restaurant| restaurant.name == name}
  end
end
