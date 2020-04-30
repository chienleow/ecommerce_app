class EcommerceApp::Listing

    attr_accessor :title, :price

    def initialize(title, price)
        @title = title
        @price = price        
    end
end