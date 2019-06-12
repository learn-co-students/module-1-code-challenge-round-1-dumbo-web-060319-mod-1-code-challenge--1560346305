class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def customers
    #returns unique array of customers who've reviewed restaurant
    ## need to access Customer via Review (joiner class)
    
  end 

  def reviews
    # returns an array of all the reviews for that restaurant
    # need #customers
  end 

  def average_star_rating
    #returns avg rating for restuaraunt 
    
  end 

  def longest_review
    #returns longest review 
    ## need #customers
  end 

  def self.all
    @@all
  end 

  def self.find_by_name(name)
    # given a string of R name, returns first R that matches
    self.all.select do |n|
      n == name
      # whyyy is this just returning an empty array
    end 
  end  



end
