class SecretsController < ApplicationController
  before_action :require_login

  def show
    if current_user.empty? 
      redirect_to '/login'
    end 
  end

  private
 
  def require_login
    if current_user.nil? 
      redirect_to sessions_new_path
    end
  end

end
