class EcommerceApp::Ebay

    attr_accessor :category, :category_id

    def initialize(category, category_id)
        @category = category
        @category_id = category_id        
    end

## use mass assignment to initialize

end