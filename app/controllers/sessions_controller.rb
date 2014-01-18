class SessionsController < ApplicationController
    # Redirects to the login page so the user can log in and make a new session
    def new
        @title = "Sign in"
    end
    
    # Creates a new session by authenticating the user and creating a session variable.
    def create
        user = User.authenticate(params[:username], params[:password])
        if user.nil?
            flash.now[:error] = 'Invalid username or password'
            @title = "Sign in"
            render 'new'
        else
            session[:user_id] = user.id
            redirect_to root_url, :notice => 'Logged in!'
        end
    end
    
    # Ends a session, e.g. the user logs out
    def destroy
        session[:user_id] = nil
        redirect_to root_url, :notice => 'Logged out!'
    end
end
