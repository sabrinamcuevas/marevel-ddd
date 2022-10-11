require './src/domain/repository/comic_repository'

module Domain
  module Services
    class ComicService
      def initialize(comic:, serie_id:)
        @comic = comic
        @serie_id = serie_id
      end

      def call
        ::Domain::Repository::ComicRepository.new(comic: @comic, serie_id: @serie_id).call
      end
    end
  end
end
