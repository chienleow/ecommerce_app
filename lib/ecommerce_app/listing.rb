class EcommerceApp::Listing

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all.clear if @@all.length > 10
        @@all << self
    end 

    def self.all
        @@all
    end
end