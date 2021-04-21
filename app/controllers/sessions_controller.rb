class SessionsController < ApplicationController

    def create 
        user = user.find_by(email: params[:user][:email])
        if user&& user.authenticate(params[:user][:password])
            render json: user
        else
            render json: {error: 'something went wrong : ('}
        end

    end

    def logged_in
        if logged_in?
            render json: {status: 201, user: current_user, logged_in: true}
        else
            render json: {status: 400, user:{}, logged_in: false}
        end
    end

    def logout
        reset_session
        render json:{status: 200}

end