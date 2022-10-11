require 'active_record'

module Infrastructure
  module Models
    class Character < ActiveRecord::Base
      self.table_name = 'characters'
    end
  end
end