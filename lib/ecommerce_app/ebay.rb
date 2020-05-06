class EcommerceApp::Ebay

    attr_accessor :category, :category_id

    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        save      
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end