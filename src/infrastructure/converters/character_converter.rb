require './src/infrastructure/models/character'
require './src/domain/entities/character'

module Infrastructure
  module Converters
    class CharacterConverter
      def self.to_model(entity, comic_id)
        character = character_new
        params = {
          character_id: entity['id'],
          comic_id: comic_id,
          name: entity['name'],
          description: entity['description'],
          image_url: entity['resourceURI']
        }
        character.attributes = params
        character
      end

      def self.to_entity(model)
        params = model.attributes.symbolize_keys
        Character.new(params)
      end

      def self.character_new
        ::Infrastructure::Models::Character.new
      end
    end
  end
end
