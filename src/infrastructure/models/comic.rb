require 'active_record'

module Infrastructure
  module Models
    class Comic < ActiveRecord::Base
      self.table_name = 'comics'
    end
  end
end