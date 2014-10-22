require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class CourseModule < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        course_id = prefix_options[:course_id] || query_options.try(:[], :course_id)
        "/courses/#{course_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end

