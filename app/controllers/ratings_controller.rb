class RatingsController < ApplicationController
    
    def index
        render json: Rating.all
    end

    def show
        rating = find_rating
        render json: rating
    end

    private
    def find_rating
        Rating.find(params[:id])
    end
end
