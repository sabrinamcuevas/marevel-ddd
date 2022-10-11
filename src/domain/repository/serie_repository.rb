require './src/infrastructure/converters/serie_converter'
require './src/domain/repository'

module Domain
  module Repository
    class SerieRepository
      include ::Domain::Repository

      def initialize(serie:, creator_id:)
        @serie = serie
        @creator_id = creator_id
      end

      def call
        create(converter, @serie, @creator_id)
      end

      private

      def converter
        ::Infrastructure::Converters::SerieConverter
      end
    end
  end
end
