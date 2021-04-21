class UsersController < ApplicationController

    def create

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

end
