class SessionsController < ApplicationController

    def create 
        user = User.find_by(email: params[:user][:email])
        if user&& user.authenticate(params[:user][:password])
            session[:id]= user.id
            render json: user
        else
            render json: {error: 'something went wrong : ('}
        end

    end

    def logged_in
        # byebug
        if logged_in?
            # render json: {status: 201, user: current_user, logged_in: true}
            render json: current_user
        else
            render json: {user:{}}
        end
    end

    def logout
        reset_session
        render json:{status: 200}
    end
private 
    def userParams
        params.require(:user).permit(:email, :password)
    end

    

end