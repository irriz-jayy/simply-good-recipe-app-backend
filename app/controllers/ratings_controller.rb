class RatingsController < ApplicationController
    
    def index
        render json: Rating.all
    end

    def show
        rating = find_rating
        render json: rating
    end

    def create
        rating=Rating.create(rating_params)
        if rating.valid?
            render json: rating, status: :created
            else
                render json:{errors:rating.errors.full_messages}, status: :unprocessable_entity
            end
        end


    private
    def find_rating
        Rating.find(params[:id])
    end

    def rating_params
        params.require(:rating).permit(:id,:user_id,:recipe_id,:rating)
    end
end
