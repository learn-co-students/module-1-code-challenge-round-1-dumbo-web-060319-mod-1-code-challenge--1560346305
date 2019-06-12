class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all<<self
  end



  def customers
    Review.all.select{ |a| a.customer==self}
  end

  def reviews
    Review.all.select{ |a| a.review==self}
  end
  def average_star_rating
    sum= 0
    a = Review.all.select{ |a| a.rating += sum}
     
  end 
  def longest_review
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
    #-----
  end



  end
 