require 'edools/core/base'

module Edools
  module Core
    class ApiKey < Edools::Core::Base
      def self.element_path(id, prefix_options = {}, query_options = nil)
        super
        secret, token = extract_credentials(id)
        "/api_keys/#{token}/#{secret}.#{format.extension}#{query_string(query_options)}"
      end

      def self.extract_credentials(credentials)
        keys = credentials.split(":")
        [keys.first, keys.last]
      end
    end
  end
end
