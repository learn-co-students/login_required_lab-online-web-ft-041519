class SessionsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    session[:name] = params[:name]
  end

  def index
  end  

  def destroy
    session.delete :name
  end 
  
  private
 
  def require_login
    if params[:name] && !params[:name].empty?
      return        
    elsif current_user.nil? || current_user.empty?    
        redirect_to sessions_new_path
    end
  end 

end
