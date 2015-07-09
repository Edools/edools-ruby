require 'edools/core/base'

module Edools
  module Core
    class Address < Edools::Core::Base

      def self.collection_path(prefix_options = {}, query_options = nil)
        super

        student_id = prefix_options[:student_id] || query_options.try(:[], :student_id)
        collaborator_id = prefix_options[:collaborator_id] || query_options.try(:[], :collaborator_id)

        if student_id
          "/students/#{student_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        elsif collaborator_id
          "/collaborators/#{collaborator_id}/#{collection_name}.#{format.extension}#{query_string(query_options)}"
        end
      end
    end
  end
end
