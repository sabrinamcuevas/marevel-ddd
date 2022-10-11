require 'sinatra'

Dir["#{Dir.pwd}/config/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/src/app/controllers/api/v1/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/src/infrastructure/api/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/src/app/tasks/*.rake"].each { |r| load r}

class App < Sinatra::Base
  use CreatorControllerRequest
end