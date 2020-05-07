class EcommerceApp::API
    def self.get_category
        response = HTTParty.get("http://open.api.ebay.com/Shopping?callname=GetCategoryInfo&appid=#{ENV['EBAY_API_KEY']}&siteid=0&CategoryID=-1&version=1141&IncludeSelector=ChildCategories")
        response["GetCategoryInfoResponse"]["CategoryArray"]["Category"].each.with_index(1) do |item, index|
            puts "#{index}. #{item["CategoryName"]} (#{item["CategoryID"]})"
            EcommerceApp::Ebay.new(response)
        end
    end


    def category_id

    end

    def self.get_listing
        category_id = 15032
        response_2 = HTTParty.get("https://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByCategory&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=#{ENV['EBAY_API_KEY']}&RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD&categoryId=#{category_id}&paginationInput.entriesPerPage=10")
        response_2["findItemsByCategoryResponse"]["searchResult"]["item"].each.with_index(1) do |item, index|
            puts "#{index}. #{item["title"]}"
            # binding.pry
        end
    end

end