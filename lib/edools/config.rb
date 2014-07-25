require 'edools/initialization'

module Edools
  # Set your API credentials using this method.
  def self.credentials= (new_credentials)
    @@credentials = new_credentials
    Edools.refresh_config_for_api_objects!
    @@credentials
  end
  def self.credentials; @@credentials; end

  # Set the format that the API uses to either 'json' or 'xml'.
  # Accepts either a String or a Symbol.
  def self.format=(new_format)
    valid_formats = [:json, :xml]
    raise ArgumentError, "Invalid format.  Supported formats: #{valid_formats.join(', ')}." unless valid_formats.include?(new_format.to_sym)
    @@format = new_format
    Edools.refresh_config_for_api_objects!
    @@format
  end
  def self.format; @@format; end

  def self.api_objects
    ObjectSpace.each_object(Class).select{ |klass| klass < Edools::Core::Base } << Edools::Core::Base
  end
  def self.refresh_config_for_api_objects!
    self.api_objects.each {|d| d.refresh_config!}
  end
end