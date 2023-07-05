class SessionsController < ApplicationController
    def create
        if user = User.authenticate(params[:email], params[:password])
            session[:user_id] = user.id
            redirect_to root_url
        else
            flash.now[:alert] = "Invalid email/password combination"
            render :action => 'new'
        end
    end

    def destroy
        reset_session
        redirect_to root_url, notice: "You successfully logged out"
    end

end
