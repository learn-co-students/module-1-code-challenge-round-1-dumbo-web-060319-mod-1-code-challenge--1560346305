class Restaurant
  @@all=[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant==self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq

  end

  def average_star_rating
    sum=0
    self.reviews.each { |review| sum+=review.rating  }
    sum/self.reviews.length.to_f
  end

  def longest_review
    self.reviews.sort_by{|review| review.content.length}[-1]
  end

  def self.find_by_name(name)
    @@all.select{|restaurant| restaurant.name==name}[0]
  end
end
