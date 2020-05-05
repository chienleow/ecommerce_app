class EcommerceApp::API
    def self.get_category
        # info = HTTParty.get("https://openapi.etsy.com/v2/listings/active?api_key=#{ENV['ETSY_API_KEY']}")
        response = HTTParty.get("http://open.api.ebay.com/Shopping?callname=GetCategoryInfo&
        appid=#{ENV['EBAY_API_KEY']}&siteid=3&CategoryID=-1&version=729&
        IncludeSelector=ChildCategories")
        binding.pry
    end

    #display index number right next to each category name and category ID
    #user choose from index number
    #when user enter index number, connect that index number to category ID
    #user category ID for next search


    def category_id
    end

    def self.get_listing
        response_2 = HTTPaarty.get("https://svcs.ebay.com/services/search/FindingService/v1?
        OPERATION-NAME=findItemsByCategory&SERVICE-VERSION=1.0.0&
        SECURITY-APPNAME=#{ENV['EBAY_API_KEY']}&
        RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD&
        categoryId=#{category_id}&paginationInput.entriesPerPage=10")
        # binding.pry

        
    end



end




