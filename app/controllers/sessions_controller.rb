class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] && !params[:name].nil? && !params[:name].blank?
            session[:name] = params[:name]
            redirect_to controller: "secrets", action: "show"
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.destroy if session[:name]
        redirect_to "/login"
    end

end