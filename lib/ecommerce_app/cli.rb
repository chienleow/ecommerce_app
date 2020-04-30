class EcommerceApp::CLI

    def start
        puts "Welcome to The eCommerce Scouting App!"
        until input = "exit"
        EcommerceApp::API.get_category    
        category_list
        get_user_category
        get_listing_for(category)
        user_sort_listing_by
        sort_by_price(input)
        next_step
        end
        goodbye
    end

    def category_list
        category = EcommerceApp::API.get_category
        puts "\nPlease enter the category number you want to search for:"
    end

    def get_user_category
        input = gets.strip.to_i
        # get number from X to X, if invalid, run invalid_input method
    end

    def get_listing_for(category)
        puts "Here are the listings and their prices in #{category}."
        listings = EcommerceApp::API.get_listing
    end

    def user_sort_listing_by
        puts "/nSort listings by highest to lowest price, type '1' /nSort listings by lowest to highest price, type '2'."
        input = gets.strip.to_i
    end

    def sort_by_price(input)
        if input = 1
            # sort listings by prices, highest to lowest
        else input = 2
            # sort listings by prices, lowest to highest
        end
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