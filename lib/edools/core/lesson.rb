require 'edools/core/base'
require 'edools/core/paginated_collection'
require 'edools/core/media'

module Edools
  module Core
    class Lesson < Edools::Core::Base

      self.collection_parser = PaginatedCollection

      # belongs_to :media, class_name: 'edools/core/media'

      # def self.collection_path(prefix_options = {}, query_options = nil)
      #   super
      #   library_id = prefix_options[:library_id] || query_options.try(:[], :library_id)
      #   "/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      # end
    end
  end
end

