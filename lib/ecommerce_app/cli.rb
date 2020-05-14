class EcommerceApp::CLI

    def start
        puts "\nWelcome to The eCommerce Scouting App!".colorize(:magenta)
        until @user_input_2 == "exit"
            category_list
            get_user_input
            listing_list
            next_step
        end
        goodbye
    end

    def category_list
        puts "\nHere is a list of eBay categories:".colorize(:blue)
        # EcommerceApp::API.get_category ## NOTES: had to move this to category.rb to prevent duplicates
        categories = EcommerceApp::Category.all
        categories.each.with_index(1) do |item, index|
            puts "#{index}. #{item.category_name}"
        end
        puts "\nPlease enter the category number you want to search for:".colorize(:green)
    end


    def listing_list
        category = EcommerceApp::Category.find(@user_input)
        puts "\nHere are the listings and their titles in category:'#{category.category_name}':".colorize(:light_blue)
        EcommerceApp::API.get_listing(category)
        listings = category.listings
        listings.each.with_index(1) do |item, index|
            puts "#{index}. #{item.title}"
        end
    end

    #refresh listings method or line

    def get_user_input
        @user_input = gets.strip.to_i
        until valid_input(@user_input)
            invalid_input
            @user_input = gets.strip.to_i
        end
    end

    def valid_input(user_input)
        @user_input <= EcommerceApp::Category.all.length && @user_input > 0
    end 

    def invalid_input
        puts "\nSorry, input error, please try again.".colorize(:red)
    end

    def next_step
        puts "\nType 'exit' to quit app or hit any key to choose a new category.".colorize(:yellow)
        @user_input_2 = gets.strip
    end

    def goodbye
        puts "\nGoodbye, thanks for using the app, happy selling!".colorize(:yellow)
    end
end
