class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(username: login_params[:username])
        
        if @user && @user.authenticate(login_params[:password])
          token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
          error_message = @user ? 'Invalid password' : 'User not found'
          render json: { error: error_message }, status: :unauthorized
        end
      end
      

    private

    def login_params
        params.require(:user).permit(:username, :password)
    end
end
