require 'sinatra/activerecord'
require 'pathname'
require 'yaml'
require 'erb'

# Enable ActiveRecord logging.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT) unless ENV['APP_ENV'] == 'test'

db_dir = File.expand_path('db', __dir__)
config_dir = File.expand_path(__dir__)

environment = 'development'

yaml = Pathname.new(File.join(config_dir, 'database.yml'))
config = YAML.load(ERB.new(yaml.read).result, aliases: true)

ActiveRecord::Base.configurations = config
ActiveRecord::Base.establish_connection environment.to_sym
