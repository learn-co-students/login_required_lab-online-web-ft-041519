class SessionsController < ApplicationController

  def new

  end

  def create           #login_path is same as (controller: 'sessions', action: 'new')
    return redirect_to login_path if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to root_path # same as controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to root_path # same as controller: 'application', action: 'hello'
  end
end
