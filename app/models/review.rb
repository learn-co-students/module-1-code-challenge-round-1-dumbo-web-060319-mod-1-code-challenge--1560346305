class Review
  
    attr_reader :customer, :restaurant

    attr_accessor :rating, :content

    def initialize(customer, restaurant, rating )
        @customer = customer
        @restaurant = restaurant
        @rating = rating

    end 

    def self.all
        @@all 
    end 

end

