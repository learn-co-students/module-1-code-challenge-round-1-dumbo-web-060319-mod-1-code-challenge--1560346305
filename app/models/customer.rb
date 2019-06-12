class Customer
  attr_reader :first_name, :last_name, :full_name
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
  Review.new(restaurant, content, rating)
end


# Customer#num_reviews
# Returns the total number of reviews that a customer has authored

def num_reviews
  a = []
  Review.all.each do |rev|
    if rev.name == self
    a << rev
  end
end
return a.length
end



def restaurants
  a = []
  Review.all.each do |rev|
    if rev.name == self
    a << rev
  end
end
return a.length
end


# given a string of a full name, returns the first customer whose full name matches
def self.find_by_name(name)
  Customer.all.find {|cust| cust.full_name == name}
end

# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

def self.find_all_by_first_name(name)
  Customer.all.select {|cust| cust.first_name == name}
end

# Customer.all_names
# should return an array of all of the customer full names

def self.all_names
  Customer.all.map {|cust| cust.full_name}
end




def self.all
  @@all
end

end
