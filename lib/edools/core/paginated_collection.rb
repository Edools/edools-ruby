require 'active_resource'

module Edools
  module Core
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
        (ObjectSpace.each_object(Class)
          .select{ |klass| klass < Edools::Core::Base }
          .collect { |klass| klass.name.split("::").last.downcase.pluralize } & keys).first
      end

    end
  end
end