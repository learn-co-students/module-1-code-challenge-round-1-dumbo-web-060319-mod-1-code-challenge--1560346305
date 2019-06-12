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
    myArr=[]
    x=Review.all 
    count = 0 

    while (count < x.size)
      if x[count].restaurant == self 
        myArr.push(x[count].customer)
      end
      count = count + 1
    end
    return myArr.uniq!
  end

  def reviews 
    Review.all.select do |place|
      if place.restaurant == self 
        place
      end
    end
  end

  def average_star_rating
    #Assume rating is an integer/float 
    num_of_reviews = 0 
    num_score = 0
    total = 0 
    x=Review.all 

    while (num_of_reviews < x.size)
      if x[num_of_reviews].restaurant == self 
        total = total + x[num_of_reviews].rating 
        num_score = num_score + 1
      end
      num_of_reviews = num_of_reviews + 1
    end
    total = total/1.0
    final = total / num_score
    return final
  end

  def longest_review 
    #Assume content is a string
    length = 0 
    actual_content = nil
    Review.all.each do |place|
      if place.restaurant == self 
        if place.content.length > length
          length = place.content.length
          actual_content = place.content
        end
      end
    end
    return actual_content
  end

  def self.find_by_name(name)
    @@all.each do |place|
      if place.name == name 
        return place 
      end
    end
  end


end
