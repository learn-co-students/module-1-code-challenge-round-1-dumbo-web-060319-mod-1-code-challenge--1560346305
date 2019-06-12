class Customer
  @@all=[]

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,rating,content)
  end

  def reviews
    Review.all.select{|review| review.customer==self}
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map{ |review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
  arr=  @@all.select {|customer| customer.full_name==name}[0]
    return "sorry customer not found" if arr.nil?
    return arr
  end

  def self.find_all_by_first_name(name)
    arr=@@all.select{|customer| customer.first_name==name}
      return "sorry customer not found" if arr.length==0
        return arr
  end

  def self.all_names
    @@all.map{|customer| customer.full_name}
  end
end
