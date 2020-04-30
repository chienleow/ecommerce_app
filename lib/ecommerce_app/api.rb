class EcommerceApp::API
    def self.get_category
        info = HTTParty.get("https://openapi.etsy.com/v2/listings/active?api_key=znxfsfsmw75wblw4b3fyre34")
        binding.pry
    end

    def self.get_listing
        ##listings with their titles and prices
        
    end



end




