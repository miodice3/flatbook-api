class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        # byebug
        if user.save
          session[:id] = user.id
          render json: user
        else
          render json: { status: 500, message: 'There was an error in creating an account'}
        end
      end

    def show
        byebug
        user = User.find_by(id: params[:id])
        render json: user

    end

    def update

    end

    def destroy

    end

    private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
end
