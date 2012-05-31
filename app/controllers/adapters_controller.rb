class AdaptersController < ApplicationController
  
  before_filter :authorize
  respond_to :json
  
  def index    
    adapters = {:adapters => Adapter.all}
    respond_with adapters
  end  
  
end
