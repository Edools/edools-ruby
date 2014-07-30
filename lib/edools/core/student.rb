require 'edools/core/base'
require 'edools/core/paginated_collection'
require 'edools/core/enrollment'

module Edools
  module Core
    class Student < Edools::Core::Base
      self.collection_parser = PaginatedCollection

      has_many :enrollments, class_name: 'edools/core/enrollment'

      def to_json(options={})
        super(include_root_in_json ? { root: 'user' }.merge(options) : options)
      end

      def to_xml(options={})
        super({ root: 'user' }.merge(options))
      end
    end
  end
end
