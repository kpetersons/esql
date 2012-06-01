class TablesController < ApplicationController
  
  before_filter :authorize
  respond_to :json
  
  def index    
    connection = ActiveRecord::Base.connection  
    tables = connection.tables.map{ |table|
      {:connection_id => params[:connection_id], :name => table, :id => table}
    }
    tables = {:tables => tables}
    respond_with tables
  end
  
end
