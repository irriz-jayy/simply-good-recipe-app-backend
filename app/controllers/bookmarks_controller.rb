class BookmarksController < ApplicationController

    def index
        render json: Bookmark.all
    end

    def show
        bookmark = find_bookmark
        render json: bookmark
    end

    def create
        user = User.find(params[:id]) # Find the user by ID
        recipe_id = params[:recipe_id] # Extract the recipe ID from the request
    
        # Check if the recipe is already bookmarked by the user
        if user.bookmarks.exists?(recipe_id: recipe_id)
          render json: { error: 'Recipe already bookmarked' }, status: :unprocessable_entity
          return
        end
    
        # Create a new bookmark record for the user and recipe
        bookmark = Bookmark.new(user: user, recipe_id: recipe_id)
    
        if bookmark.save
          render json: { message: 'Recipe bookmarked successfully' }, status: :created
        else
          render json: { error: 'Failed to bookmark recipe' }, status: :unprocessable_entity
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
