require_relative "./ecommerce_app/version"
require_relative "./ecommerce_app/api"
require_relative "./ecommerce_app/cli"
require_relative "./ecommerce_app/category"
require_relative "./ecommerce_app/listing"
require "httparty"
require "pry"
require "dotenv/load"
require "colorize"


module EcommerceApp
  class Error < StandardError; end
  # Your code goes here...
end
