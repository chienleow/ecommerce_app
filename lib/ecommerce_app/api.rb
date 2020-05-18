class EcommerceApp::API
    def self.get_category
        response = HTTParty.get("http://open.api.ebay.com/Shopping?callname=GetCategoryInfo&appid=#{ENV['EBAY_API_KEY']}&siteid=0&CategoryID=-1&version=1141&IncludeSelector=ChildCategories")
        data = response["GetCategoryInfoResponse"]["CategoryArray"]["Category"]
        data.shift(1) 
        data.each do |item|
            category_name = item["CategoryName"]
            category_id = item["CategoryID"]
            EcommerceApp::Category.new(category_name, category_id)
        end
    end

    def self.get_listing(category)
        response_2 = HTTParty.get("https://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByCategory&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=#{ENV['EBAY_API_KEY']}&RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD&categoryId=#{category.category_id}&paginationInput.entriesPerPage=#{EcommerceApp::CLI.listing_amount}")
        response_2["findItemsByCategoryResponse"]["searchResult"]["item"].each do |item|
            title = item["title"]
            category.listings << EcommerceApp::Listing.new(title)
        end
    end
end