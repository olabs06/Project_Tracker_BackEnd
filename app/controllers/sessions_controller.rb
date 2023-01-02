class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
    def create
         user = User.find_by(email_address: params[:email_address])
            if user&.authenticate(params[:password])
                session[:user_id] = user.id
                render json: user, except: [:password_digest, :created_at, :updated_at], status: 200
            else
                render json: { errors: ["Invalid email or password"] }, status: :unauthorized
            end
    end
    
    def destroy
        session.delete :user_id
        head :no_content
     end
end
