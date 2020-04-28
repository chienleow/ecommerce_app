class EcommerceApp::CLI

    def start
        puts "Welcome to The eCommerce Scouting App!"
        EcommerceApp::API.get_category
        category_number
    end

    def category_number
        puts "Please enter the category number you want to search for:"
        input = gets.strip
    end

    def validate_input(input)
    end
end