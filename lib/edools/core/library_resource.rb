require 'edools/core/base'
require 'edools/core/paginated_collection'
require 'edools/core/course'

module Edools
  module Core
    class LibraryResource < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      has_one :course, class_name: 'edools/core/course'
      
      # def self.collection_path(prefix_options = {}, query_options = nil)
      #   super
      #   course_module_id = prefix_options[:course_module_id] || query_options.try(:[], :course_module_id)
      #   "/course_modules/#{course_module_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      # end
    end
  end
end

