class Customer

  @@all = []

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    #given a restaurant object, some review content (as a string), and a star rating (as an integer), 
    ###creates a new review and associates it with that customer and restaurant.


  end 

  def num_reviews
    #Returns the total number of reviews that a customer has authored
    Review.all.select { |review| review.customer == self}

  end 

  def restaurants
    #Returns a unique array of all restaurants a customer has reviewed
    num_reviews.map {|reviews| customer.review }.uniq 
  end 

  def self.all
    @@all 
  end 

  def customer.find_by_name(name)
    #given a string of a full name, returns the first customer whose full name matches
    full_name.find { |full_name| full_name.find == self } 
  end
  
  def customer.find_all_by_first_name(name)
    #given a string of a first name, returns an array containing all customers with that first name
    full_name.all.select { |first_name| customer.first_name == self }

  end 

  def customer.all_names
    #should return an array of all of the customer full names
    full_name.all.select { |full_name| customer.full_name == self }

  end 

end
