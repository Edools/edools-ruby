require 'edools/core/base'
require 'edools/core/student'
require 'edools/core/paginated_collection'
# require 'edools/core/enrollment'

module Edools
  module Core
    class Address < Edools::Core::Base
      # self.collection_parser = PaginatedCollection

      # has_many :enrollments, class_name: 'edools/core/enrollment'
      belongs_to :student, class_name: 'edools/core/student'

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        user_id = prefix_options[:user_id] || query_options.try(:[], :user_id)
        "/address/#{user_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end

