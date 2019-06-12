class Review
    attr_accessor :content, :rating, :restaurant, :customer

    @@all = []

    def initialize(args)
        args.each { |key, val| self.send("#{key}=", val) }
        @@all << self
    end

    def self.all
        @@all
    end

end

