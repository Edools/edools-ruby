require 'edools/ecommerce/base'
require 'edools/paginated_collection'

module Edools
  module Ecommerce
    class Coupon < Edools::Ecommerce::Base
      self.collection_parser = Edools::PaginatedCollection

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        product_guid = prefix_options[:product_guid] || query_options.try(:[], :product_guid)
        if product_guid
          "/products/#{product_guid}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        else
          "/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        end
      end
    end
  end
end
