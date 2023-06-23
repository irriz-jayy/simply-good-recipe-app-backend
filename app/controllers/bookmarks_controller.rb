class BookmarksController < ApplicationController

    def index
        render json: Bookmark.all
    end

    def show
        bookmark = find_bookmark
        render json: bookmark
    end

    def create
        bookmark = Bookmark.create(bookmark_params)
        if bookmark.valid?
            render json:bookmark, status: :created
        else 
            render json: {errors:bookmark.errors.full_messages},status: :unprocessable_entity
        end
    end


    private
    def find_bookmark
        Bookmark.find(params[:id])
    end

    def bookmark_params
        params.require(:bookmark).permit(:id,:user_id,:recipe_id)
    end
end
