require 'sinatra/base'
require './src/domain/services/creator_service'
class CreatorControllerRequest < Sinatra::Application
  post '/creators' do
    ::Domain::Services::CreatorService.new(creator: params).call
  end
end
