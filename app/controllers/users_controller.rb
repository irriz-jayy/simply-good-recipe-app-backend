class UsersController < ApplicationController
    before_action :set_users, only: [:index, :show]
    
    def index
        render json: @users, status: :ok
    end

    private
    def set_users
        @users = User.all
    end
end
