require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class SchoolClass < Edools::Core::Base
      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        school_product_id = prefix_options[:school_product_id] || query_options.try(:[], :school_product_id)
        "/school_products/#{school_product_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end
