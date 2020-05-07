class EcommerceApp::CLI

    def start
        puts "\nWelcome to The eCommerce Scouting App!"
        category_list
        get_user_input
        # listing_list

        # next step
        # until input = "exit"
        # end
        # goodbye
    end

    def category_list
        puts "\nHere is a list of eBay categories:"
        EcommerceApp::API.get_category
        categories = EcommerceApp::Category.all
        categories.each.with_index(1) do |item, index|
            puts "#{index}. #{item.category_name} (#{item.category_id})"
        end
        puts "\nPlease enter the category number you want to search for:"
    end


    def listing_list
        category = EcommerceApp::Category.find(@user_input)
        puts "\nHere are the listings and their titles in category:'#{category.category_name}'."
        EcommerceApp::API.get_listing(category.category_id)
        listings = EcommerceApp::Listing.all
        listings.each.with_index(1) do |item, index|
            puts "#{index}. #{item.title}"
        end
    end

    def get_user_input
        @user_input = gets.strip.to_i
        if valid_input(@user_input)
            listing_list
        else 
            invalid_input
        end
    end

    def valid_input(user_input)
        @user_input <= EcommerceApp::Category.all.length && @user_input > 0
        # binding.pry
    end 

    def invalid_input
        puts "\nSorry, input error, please try again."
        category_list
    end

    # def next_step
    #     puts "Type 'exit' to quit app or hit any key to choose a new category."
    #     input = gets.strip
    # end

    # def goodbye
    #     "Goodbye, thanks for using the app, happy selling!"
    # end
end
