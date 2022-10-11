require './src/domain/repository/serie_repository'

module Domain
  module Services
    class SerieService
      def initialize(serie:, creator_id:)
        @serie = serie
        @creator_id = creator_id
      end

      def call
        ::Domain::Repository::SerieRepository.new(serie: @serie, creator_id: @creator_id).call
      end
    end
  end
end
