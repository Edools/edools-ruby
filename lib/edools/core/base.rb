module Edools
  module Core
    class Base < ActiveResource::Base
      self.site = Edools::CORE_BASE_URL
      self.include_root_in_json = true

      def self.refresh_config!
        self.format = ActiveResource::Formats::JsonFormat if Edools.format == :json
        self.format = ActiveResource::Formats::XmlFormat if Edools.format == :xml
        self.headers['Authorization'] = "Token token=#{Edools.credentials}"
        self.headers['Accept'] = "application/#{Edools::CORE_VERSION}+#{Edools.format}"
      end
      refresh_config!

    end
  end
end