class EcommerceApp::CLI

    def start
        puts "Welcome to The eCommerce Scouting App!"
        EcommerceApp::API.get_category
        category_list
    end

    def category_list
        ## a list of category needs to print out here
        puts "\nPlease enter the category number you want to search for:"
        input = gets.strip
        ## the number list if else way of doing it
        else
            invalid_input
        end
    end

    def invalid_input(input)
        puts "\nSorry, input error, please try again."
        category_list
    end

    def selected_category(category)
        puts "Here are the listings and their prices in #{category}."
    end

    def goodbye
        "Goodbye, thanks for using the app, happy selling!"
    end


end