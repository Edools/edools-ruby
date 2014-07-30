require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class Enrollment < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        student_id = prefix_options[:student_id] || query_options.try(:[], :student_id)
        if student_id
          "/students/#{student_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        else
          "/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        end
      end
    end
  end
end
