class Customer
  @@all = []
  attr_reader :first_name, :last_name ,:review , :restaurant

  def initialize(first_name, last_name , review , restaurant )
    @first_name = first_name
    @last_name  = last_name
    @review = review
    @restaurant = restaurant
    @@all<<self
  end

  def full_name
    "#{first_name} #{last_name}"

  end

  def num_reviews
    @@all.map{|customer| customer.review}.count
  end

  def restaurants
    @@all.select{|customer| customer.restaurant }.uniq
    
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    ####
  end
  def self.find_all_by_first_name(name)
    #all customer with first name 
  end
  def self.all_names
    #full name
  end


end 
