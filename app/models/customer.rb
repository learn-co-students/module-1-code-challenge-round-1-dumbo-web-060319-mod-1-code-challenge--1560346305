class Customer
  attr_reader :first_name, :last_name, :review

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant
  def add_review(restaurant, content, rating)
     

  end

  #Returns the total number of reviews that a customer has authored
  def number_reviews
    arr_of_reviews = Review.all.select do |review|
                      review.customer == self
    end
    arr_of_reviews.count
  end

  #Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
      Review.all.select do |review|
        review.restaurant.uniq
      end
  end

  #given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
     self.all.select do |customer|
      customer == customer.full_name
     end
  end

  #given a string of a first name, returns an **array** containing all customers with that first 
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.fist_name == name
    end
  end

  #should return an **array** of all of the customer full names
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end
end
