require 'edools/core/base'
require 'edools/paginated_collection'

module Edools
  module Core
    class Collaborator < Edools::Core::Base
      self.collection_parser = Edools::PaginatedCollection

      def to_json(options={})
        super(include_root_in_json ? { root: 'user' }.merge(options) : options)
      end

      def to_xml(options={})
        super({ root: 'user' }.merge(options))
      end
    end
  end
end
