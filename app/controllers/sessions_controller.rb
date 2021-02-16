class SessionsController < ApplicationController
before_action :logged_in_redirect, only: [:new, :create]

    #show login form
    def new 
        
    end

    #for submiting login form
    def create
        #check for username in database
        user = User.find_by(username: params[:session][:username])
        
        #checks if the user is found and the password is correct
        if user && user.authenticate(params[:session][:password])
            session[:user_id]= user.id
            flash[:success] = "You have successfully logged in"
            redirect_to root_path
        else
            flash.now[:error] = "Username or password is wrong"
            render 'new'
        end
    end

    def destroy
        session[:uer_id] = nil
        flash[:success] = "You have successfully logged out"
        redirect_to login_path
    end


    private 
    def logged_in_redirect
        if logged_in?
            flash[:error] = "You are already logged in"
            redirect_to root_path
        end
    end
end