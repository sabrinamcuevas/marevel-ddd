require 'rake'
require 'json'
Dir["#{Dir.pwd}/src/domain/services/*.rb"].each { |file| require file }

desc 'Create creators'

task :create_creators do
  puts '****  ****'
  comics = MarvelApi.new.comics['data']['results']
  comics.each do |comic|
    characters = MarvelApi.new.characters_by_comic(comic['id'])['data']['results']
    characters.each do |character|
      ::Domain::Services::CharacterService.new(character: character, comic_id: comic['id']).call
    end

    creators = MarvelApi.new.creators_by_comic(comic['id'])['data']['results']
    creators.each do |creator|
      series = MarvelApi.new.series_by_creator(creator['id'])['data']['results']
      series.each do |serie|
        ::Domain::Services::SerieService.new(serie: serie, creator_id: creator['id']).call
        ::Domain::Services::ComicService.new(comic: comic, serie_id: serie['id']).call
      end
      ::Domain::Services::CreatorService.new(creator: creator).call
    end
  end

  puts '****  ****'
end
