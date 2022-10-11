require 'active_record'

module Infrastructure
  module Models
    class Serie < ActiveRecord::Base
      self.table_name = 'series'
    end
  end
end