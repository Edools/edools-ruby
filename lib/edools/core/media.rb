require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class Media < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      # has_many :content_lessons, class_name: 'edools/core/content_lesson'

      # def self.collection_path(prefix_options = {}, query_options = nil)
      #   super
      #   # host_key = prefix_options[:host_key] || query_options.try(:[], :host_key)
      #   "/media"
      # end
    end
  end
end

