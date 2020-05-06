class EcommerceApp::API
    def self.get_category
        response = HTTParty.get("http://open.api.ebay.com/Shopping?callname=GetCategoryInfo&appid=#{ENV['EBAY_API_KEY']}&siteid=0&CategoryID=-1&version=1141&IncludeSelector=ChildCategories")
        response["GetCategoryInfoResponse"]["CategoryArray"]["Category"].each.with_index(1) do |item, index|
            puts "#{index}. #{item["CategoryName"]}, #{item["CategoryID"]}"
        end
        response
    end

#   to_do:
#   1. remove first "Root, -1"


    def category_id

    end

    def self.get_listing
        response_2 = HTTPaarty.get("https://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByCategory&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=#{ENV['EBAY_API_KEY']}&RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD&categoryId=#{category_id}&paginationInput.entriesPerPage=10")
        # binding.pry

        
    end



end


# response["GetCategoryInfoResponse"].each do |category_array|
# category_array.each do |category|
# category.each do |key, value|
#     puts "#{key} = #{value}"
# end
# end
# end