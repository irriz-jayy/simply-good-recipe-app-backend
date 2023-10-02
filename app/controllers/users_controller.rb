class UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

def index
  @users = User.all
  render json:@users
end

def profile
  render json: @user
end

def show
  @user = User.find_by(params[:id])
  render json: @user
end

def recipes
  @user = User.find_by(id: params[:id])

  if @user
    @recipes = @user.recipes
    render json: @recipes
  else
    render json: { error: 'User and recipes not found' }, status: :not_found
  end
end

def bookmarks
  @user = User.find_by(id:params[:id])

  if @user
  @bookmarks = @user.bookmarks
  render json: @bookmarks
  else
    render json:{error:"User and saved recipes not found"}
  end
end


def create
  user = User.new(user_params)
  
  # Check if the 'profile_picture_url' key exists in params
  if params[:user][:profile_picture_url].present?
    cloudinary_url = params[:user][:profile_picture_url]
    user.profile_picture_url = cloudinary_url
  end
  
  if user.save
    token = encode_token(user_id: user.id)
    render json: { user: UserSerializer.new(user), jwt: token }, status: :created
  else
    render json: { error: 'Failed to create user', errors: user.errors.full_messages }, status: :unprocessable_entity
  end
end




private

def user_params
   params.require(:user).permit(:name, :email, :username, :password, :profile_picture_url)
end
end
