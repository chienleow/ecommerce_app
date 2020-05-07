class EcommerceApp::CLI

    def start
        puts "\nWelcome to The eCommerce Scouting App!"
        category_list
        # user_category(input)
        # get_listing_for(category)

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

    def user_category(input)
        input = gets.strip.to_i
        # get number from X to X, if invalid, run invalid_input method
    end

    def get_listing_for(category)
        puts "\nHere are the listings and their titles in #{category}."
        listings = EcommerceApp::API.get_listing
    end

    def invalid_input(input)
        puts "\nSorry, input error, please try again."
        category_list
    end

    def next_step
        puts "Type 'exit' to quit app or hit any key to choose a new category."
        input = gets.strip
    end

    def goodbye
        "Goodbye, thanks for using the app, happy selling!"
    end


end




 # def user_sort_listing_by
    #     puts "/nSort listings by highest to lowest price, type '1' /nSort listings by lowest to highest price, type '2'."
    #     input = gets.strip.to_i
    # end

    # def sort_by_price(input)
    #     if input = 1
    #         # sort listings by prices, highest to lowest
    #     else input = 2
    #         # sort listings by prices, lowest to highest
    #     end
    # end