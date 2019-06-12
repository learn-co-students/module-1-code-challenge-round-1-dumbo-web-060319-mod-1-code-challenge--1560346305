class Review
    @@all = []
    attr_accessor :customer, :resturant ,:rating
    def initialize(customer, resturant, rating)
        @customer=customer
        @resturant= resturant
        @rating =rating
        @@all<<self
    end

    def self.all
        @@all
    end
end

 