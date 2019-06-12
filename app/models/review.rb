class Review
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant 
    @@all = []

    def initialize(customer, restaurant)
        @customer = customer 
        @restaurant = restaurant 
        @@all << self 
    end 
  
    def self.all
        @@all 
    end

    def customer 
        @customer 
    end
    
    def restaurant 
        @restaurant 
    end

    def rating 
        @rating 
    end 

    def content 
        @content 
    end
end

