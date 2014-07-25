require 'edools/core/base'
require 'edools/core/paginated_collection'

module Edools
  module Core
    class Student < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      def to_json(options={})
        super(include_root_in_json ? { root: 'user' }.merge(options) : options)
      end

      def to_xml(options={})
        super({ root: 'user' }.merge(options))
      end
    end
  end
end
