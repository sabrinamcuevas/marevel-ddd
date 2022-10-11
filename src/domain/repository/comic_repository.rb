require './src/infrastructure/converters/comic_converter'
require './src/domain/repository'

module Domain
  module Repository
    class ComicRepository
      include ::Domain::Repository

      def initialize(comic:, serie_id:)
        @comic = comic
        @serie_id = serie_id
      end

      def call
        create(converter, @comic, @serie_id)
      end

      private
      def converter
        ::Infrastructure::Converters::ComicConverter
      end
    end
  end
end
