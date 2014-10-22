require 'edools/core/base'
require 'edools/core/student'
# require 'edools/core/paginated_collection'
# require 'edools/core/enrollment'

module Edools
  module Core
    class Address < Edools::Core::Base

      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        user_id = prefix_options[:user_id] || query_options.try(:[], :user_id)
        "/students/#{user_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      end
    end
  end
end

