class UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

# def profile
#   render json: user
# end
def profile
  @user = User.find(params[:id])
  render json: { user: @user }, status: :ok
rescue ActiveRecord::RecordNotFound
  render json: { error: 'User not found' }, status: :not_found
end


def create
  user = User.create(user_params)
  if user.valid?
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
  else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
  end
end


private

def user_params
   params.require(:user).permit(:name, :email, :username, :password, :profile_picture_url)
end
end
