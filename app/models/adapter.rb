class Adapter < ActiveRecord::Base
  
  has_many :db_connections
  
  attr_accessible :name
  
  
end
