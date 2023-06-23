class BookmarksController < ApplicationController

    def index
        render json: Bookmark.all
    end

    def show
        bookmark = find_bookmark
        render json: bookmark
    end

    private
    def find_bookmark
        Bookmark.find(params[:id])
    end
end
