class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create 
    if params["name"] && params["name"] != ""
      session[:name] = params["name"]
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session[:name] = nil
  end
end
