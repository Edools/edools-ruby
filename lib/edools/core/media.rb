require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class Video < Edools::Core::Base
      # def self.collection_path(prefix_options = {}, query_options = nil)
      #   super
      #   library_id = prefix_options[:library_id] || query_options.try(:[], :library_id)
      #   "/#{collection_name}.#{format.extension}#{query_string(query_options)}"
      # end
    end
  end
end

