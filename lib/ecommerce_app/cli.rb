class EcommerceApp::CLI

    def start
        puts "Welcome to The eCommerce Scouting App!"
        EcommerceApp::API.get_listings
        ask_keywords
    end

    def ask_keywords
        puts "Please enter the keywords you want to search for:"
        input = gets.strip
    end

    def validate_input(input)
    end
end