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

  def add_review(restaurant, content, rating)
    ## create a new review associated with customer and restaurant
    # Ok so we need to somehow link Customer with Restaurant 
    # via the joiner class Review BUT HOWWWWW!??!?!

    

  end 

  def num_reviews
    #returns total number of reviews from a customer
    ### need add_review
  end 

  def restaurants
    # returns unique array of all restaurants customer reviewd
    ### need add_review
  end 



  def self.all
    @@all
  end 

  def self.find_by_name(name)
    # given a string of full name, returns first customer 
    ## whose full name matches
    self.all.select do |n|
      n == name 
    # whyyy is this just returning an empty array
    end 
  end 

  def self.find_all_by_first_name(name)
    # first name returns array of all customers with same 
    ## first name
  end 
    
  def self.all_names
    #returns an array of all the customer full names
    arr = []
    arr << self.full_name
  end 

end
