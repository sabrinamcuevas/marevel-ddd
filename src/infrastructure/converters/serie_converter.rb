require './src/infrastructure/models/serie'
require './src/domain/entities/serie'

module Infrastructure
  module Converters
    class SerieConverter
      def self.to_model(entity, creator_id)
        serie = serie_new
        params = {
          serie_id: entity['id'],
          creator_id: creator_id,
          title: entity['title'],
          description: entity['description'],
          start_year: entity['startYear'],
          end_year: entity['startYear'],
          image_url: entity['resourceURI'],
          rating: entity['rating']
        }
        serie.attributes = params
        serie
      end

      def self.to_entity(model)
        params = model.attributes.symbolize_keys
        Serie.new(params)
      end

      private
      def self.serie_new
        ::Infrastructure::Models::Serie.new
      end
    end
  end
end
