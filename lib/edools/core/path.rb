require 'edools/core/base'
require 'edools/paginated_collection'

module Edools
  module Core
    class Path < Edools::Core::Base
      self.collection_parser = Edools::PaginatedCollection
    end
  end
end
