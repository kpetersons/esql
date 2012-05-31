class DbConnection < ActiveRecord::Base
  
  belongs_to :adapter
  
  attr_accessible :name, :username, :password, :adapter_id
  
  def as_json options={}
    super(options.merge(:except => [:password, :created_at, :updated_at], :method => [:m_adapter]))
  end

  def m_adapter
    {:adapter => adapter}
  end
  
end
