class Review
    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(restaurant, customer, rating)
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def content
    #returns the review content, as a string, for a particular review
    end

end

