require 'active_record'

module Infrastructure
  module Models
    class Creator < ActiveRecord::Base
      self.table_name = 'creators'
    end
  end
end