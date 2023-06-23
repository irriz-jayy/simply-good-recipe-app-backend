class BookmarksController < ApplicationController

    def index
        render json: Bookmark.all
    end
end
