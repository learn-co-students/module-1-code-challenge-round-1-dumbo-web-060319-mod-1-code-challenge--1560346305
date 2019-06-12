class Review

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        self.all.select {|review| review.customer if review.customer == self}
    end

    def restaurant
        self.all.select {|review| review.restaurant if review.restaurant == self}
    end

    def rating
        self.all.select {|review| review.rating if review.rating == self}
    end

    def content
        self.all.select {|review| review.content if review.content == self}
    end
  
end

