require 'edools/initialization'

module Edools
  class << self
    attr_accessor :credentials, :format

    # Set your API credentials using this method.
    def credentials= (new_credentials)
      @credentials = new_credentials
      refresh_config_for_api_objects!
      @credentials
    end

    # Set the format that the API uses to either 'json' or 'xml'.
    # Accepts either a String or a Symbol.
    def format=(new_format)
      valid_formats = [:json, :xml]
      raise ArgumentError, "Invalid format.  Supported formats: #{valid_formats.join(', ')}." unless valid_formats.include?(new_format.to_sym)
      @format = new_format
      refresh_config_for_api_objects!
      @format
    end

    def api_objects
      ObjectSpace.each_object(Class).select{ |klass| klass < Edools::Core::Base } << Edools::Core::Base
    end

    def refresh_config_for_api_objects!
      api_objects.each {|d| d.refresh_config!}
    end
  end
end