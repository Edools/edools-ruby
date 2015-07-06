module Edools
  class Base < ActiveResource::Base
    def self.refresh_config!
      self.format = ActiveResource::Formats::JsonFormat if Edools.format == :json
      self.format = ActiveResource::Formats::XmlFormat if Edools.format == :xml
      self.headers['Authorization'] = "Token token=#{Edools.credentials}"
      self.headers['Accept'] = "application/#{version}+#{Edools.format}"
    end

    def self.version=(version)
      @version = version
    end

    def self.version
      @version
    end

    self.site = nil
    self.version = nil
    self.include_root_in_json = true

    refresh_config!

  end
end
