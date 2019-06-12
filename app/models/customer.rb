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

  #Class Methods 
  def self.all 
    @@all 
  end 

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant)
    new_review.content = content 
    new_review.rating = rating 
  end

  def num_reviews
    total = 0
    Review.all.each do |r|
      if r.customer == self 
        total = total + 1
      end
    end
    return total 
  end

  def restaurants
    x= Review.all.select do |place|
      if place.customer == self 
        place.restaurant
      end
    end
    return x.uniq!
  end

  
  def self.find_by_name(name)
    @@all.each do |person|
      first = person.first_name 
      last = person.last_name
      full = "#{first} #{last}"
      if full == name 
        return person 
      end
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |person|
      if person.first_name == name 
        person
      end
    end
  end

  def self.all_names
    myArr=[]
    @@all.each do |person|
      first = person.first_name 
      last = person.last_name
      full = "#{first} #{last}"
      myArr.push(full)
    end
    myArr
  end


end
