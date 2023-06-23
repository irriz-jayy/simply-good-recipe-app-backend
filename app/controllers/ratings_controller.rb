class RatingsController < ApplicationController
    before_action :set_ratings, only: [:index, :show]
    
    def index
        render json: @ratings
    end

    private
    def set_ratings
        @ratings = Rating.all
    end
end
