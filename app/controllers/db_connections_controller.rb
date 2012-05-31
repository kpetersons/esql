class DbConnectionsController < ApplicationController
  before_filter :authorize
  respond_to :json
  
  def index    
    connections = {:connections => DbConnection.all}
    respond_with connections
  end
  
  def create
    connection = DbConnection.new(params[:connection])    
    connection.save()    
    respond_with({:connection => connection}, :status => 200, :location => connection_path(connection))    
  end
  
end
