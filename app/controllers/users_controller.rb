class UsersController < ApplicationController
  before_action :set_current_user
  skip_before_action :authorize, only: [:create, :index, :show]
  
  def index
    users = User.all 
    render json: users, status: :ok
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

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def user_params
    params.permit(:name, :email_address, :user_type, :password, :phone_number)
  end

  
end
