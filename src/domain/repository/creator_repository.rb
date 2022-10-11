require './src/infrastructure/converters/creator_converter'
require './src/domain/repository'

module Domain
  module Repository
    class CreatorRepository
      include ::Domain::Repository

      def initialize(creator:)
        @creator = creator
      end

      def call
        create(converter, @creator)
      end

      private

      def converter
        ::Infrastructure::Converters::CreatorConverter
      end
    end
  end
end
