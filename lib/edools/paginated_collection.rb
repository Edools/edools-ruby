require 'active_resource'

module Edools
  class PaginatedCollection < ActiveResource::Collection

    # Our custom array to handle pagination methods
    attr_accessor :total_pages, :per_page, :total_count, :current_page

    # The initialize method will receive the ActiveResource parsed result
    # and set @elements.
    def initialize(parsed = {})
      @elements = parsed[resource_key(parsed.keys)]
      @total_pages = parsed["total_pages"]
      @per_page = parsed["per_page"]
      @total_count = parsed["total_count"]
      @current_page = parsed["current_page"]
    end

    private

    def resource_key(keys)
      (Edools.api_objects
        .collect { |klass| split_class_name_to_key_match(klass) }.flatten & keys).first
    end

    def split_class_name_to_key_match(klass)
      resource_key = klass.name.split("::").last.underscore.pluralize

      if resource_key.include?('_')
        [resource_key, resource_key.gsub('_')]
      else
        resource_key
      end
    end

  end
end
