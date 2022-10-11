require './src/domain/repository/character_repository'

module Domain
  module Services
    class CharacterService
      def initialize(character:, comic_id:)
        @character = character
        @comic_id = comic_id
      end

      def call
        ::Domain::Repository::CharacterRepository.new(character: @character, comic_id: @comic_id).call
      end
    end
  end
end
