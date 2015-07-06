require 'edools/core/base'
require 'edools/paginated_collection'

module Edools
  module Core
    class Session < Edools::Core::Base

      self.include_root_in_json = false

      # used for create the session
      def self.collection_path(prefix_options = {}, query_options = nil)
        super
        "/users/sign_in.#{format.extension}#{query_string(query_options)}"
      end

    end
  end
end
