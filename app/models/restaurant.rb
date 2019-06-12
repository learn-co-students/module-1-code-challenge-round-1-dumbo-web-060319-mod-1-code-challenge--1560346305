class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    self.reviews.map { |r| r.customer }.uniq
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end 

  def average_star_rating
    total = 0
    self.reviews.each do |r|
      total += r.rating
    end

    average = total / self.reviews.count
    return average 
  end

  def longest_review
    longest = nil
    self.reviews.each do |r|
      if longest == nil
        longest = r.content
      elsif r.content.length > longest.length 
        longest = r.content
      end
    end 

    return longest
  end

  def self.find_by_name(name)
    self.all.find{ |n| n.name == name }
  end

end
