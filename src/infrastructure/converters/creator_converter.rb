require './src/infrastructure/models/creator'
require './src/domain/entities/creator'

module Infrastructure
  module Converters
    class CreatorConverter
      def self.to_model(entity, id = {})
        creator = creator_new
        params = {
          creator_id: entity['id'],
          first_name: entity['firstName'],
          last_name: entity['lastName'],
          image_url: entity['resourceURI']
        }
        creator.attributes = params
        creator
      end

      def self.to_entity(model)
        params = model.attributes.symbolize_keys
        Creator.new(params)
      end

      private
      def self.creator_new
        ::Infrastructure::Models::Creator.new
      end
    end
  end
end
