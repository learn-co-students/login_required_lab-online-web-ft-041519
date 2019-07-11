class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show
  end

  private
 
  def require_login
    unless session.include? :name
      redirect_to '/sessions/new'
    end
  end
end
