require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class SchoolProduct < Edools::Core::Base
      # self.collection_parser = PaginatedCollection

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        school_id = prefix_options[:school_id] || query_options.try(:[], :school_id)
        "/schools/#{school_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end
