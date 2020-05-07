class EcommerceApp::Category

    attr_accessor :category_name, :category_id

    @@all = []

    def initialize(category_name, category_id)
        @category_name = category_name
        @category_id = category_id
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end