require 'edools/ecommerce/base'
require 'edools/paginated_collection'

module Edools
  module Ecommerce
    class Product < Edools::Ecommerce::Base
      self.collection_parser = Edools::PaginatedCollection

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        school_id = prefix_options[:school_id] || query_options.try(:[], :school_id)
        "/schools/#{school_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end
