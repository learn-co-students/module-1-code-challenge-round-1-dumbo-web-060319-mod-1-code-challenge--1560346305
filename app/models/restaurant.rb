class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews 
    Review.all.select { |review| review.restaurant == self }
  end

  def customers #unique
    reviews.map { |review| review.customer }.uniq #method chain
  end

  def average_star_rating 
    total_stars = 0 
    number_of_reviews = 0 
    reviews.each do |review| 
      total_stars += review.rating 
      number_of_reviews += 1
    end
    total_stars / number_of_reviews
  end

  def longest_review 
    #asks for the actual content rather than instance of review
    longest_review = reviews[0].content 
    reviews.each do |review| 
      if review.content.length > longest_review.length 
        longest_review = review.content
      end
    end
    longest_review
  end



  #class methods 
  def self.all 
    @@all 
  end

  def self.find_by_name(name)
    @@all.find { |restauarant| restauarant.name == name }
  end

end
