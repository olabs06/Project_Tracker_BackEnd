class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :index, :show]
        def index
            users = User.all 
            render json: users
        end

        def create
            user = User.create!(user_params)
            session[:user_id] = user.id
            render json: user, status: :created
        end

        def show
            render json: @current_user
        end

    private

    def user_params
        params.permit(:name, :email_address, :user_type, :password, :phone_number)
    end
end
