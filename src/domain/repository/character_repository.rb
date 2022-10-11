require './src/infrastructure/converters/character_converter'
require './src/domain/repository'

module Domain
  module Repository
      class CharacterRepository
        include ::Domain::Repository

        def initialize(character:, comic_id:)
          @character = character
          @comic_id = comic_id
        end

        def call
          create(converter, @character, @comic_id)
        end

        private
        def converter
          ::Infrastructure::Converters::CharacterConverter
        end
      end
    end
end
