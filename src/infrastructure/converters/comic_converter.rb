require './src/infrastructure/models/comic'
require './src/domain/entities/comic'

module Infrastructure
  module Converters
    class ComicConverter
      def self.to_model(entity, serie_id)
        comic = comic_new
        params = {
          comic_id: entity['id'],
          serie_id: serie_id,
          title: entity['title'],
          isbn: entity['isbn'],
          description: entity['description'],
          image_url: entity['resourceURI'],
          page_count: entity['pageCount']
        }
        comic.attributes = params
        comic
      end

      def self.to_entity(model)
        params = model.attributes.symbolize_keys
        Comic.new(params)
      end

      private
      def self.comic_new
        ::Infrastructure::Models::Comic.new
      end
    end
  end
end
