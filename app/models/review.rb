class Review
    attr_reader :restaurant, :customer, :rating, :content
    @@all = []

    def intialize
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        @@all.select do |review| 
         if review == self
            review.customer
         end
        end
    end

    def restaurant
        @@all.select do |review| 
         if review = self
            review.restaurant
         end
        end
    end

    def rating
        @@all.select do |review|
            if review = self
                review.restaurant
            end
        end
    end

    def content
        @@all.select do |review|
            if review == self
                review.content
            end
        end
    end
  
end

