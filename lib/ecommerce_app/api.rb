class EcommerceApp::API
    def self.get_listings
        doc = HTTParty.get("https://openapi.etsy.com/v2/listings/active?api_key=znxfsfsmw75wblw4b3fyre34")
        doc[]
        binding.pry
    end
end



