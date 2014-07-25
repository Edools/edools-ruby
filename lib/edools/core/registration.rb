require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class Registration < Edools::Core::Base
      self.collection_parser = PaginatedCollection
    end
  end
end
