require_relative "./ecommerce_app/version"
require_relative "./ecommerce_app/api"
require_relative "./ecommerce_app/cli"
require_relative "./ecommerce_app/listing"
require "httparty"
require "pry"


module EcommerceApp
  class Error < StandardError; end
  # Your code goes here...
end
