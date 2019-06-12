class Review
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end 

    def customer
        @customer
    end 

    def restaurant
        @restaurant
    end 

    def rating
        # returns 1-5 star rating for given review
        ## need #add_review
    end 

    def content
        # returns review content as a string
        # need #add_review
    end 


    def self.all
        @@all
    end 
end

