class Review

    attr_accessor :name, :restaurant, :customer

    @all = []

    def initialize(name, restaurant, customer)
        @name = name
        @restaurant = restaurant
        @customer = customer 
        @@all << self
    end
    
    def self.all
        @@all
    end

    #returns the star rating for a restaurant. This should be an integer
    def rating
        restaurant.stars
    end

    #returns the review content, as a string, for a particular review
    def content
        

    end
end

