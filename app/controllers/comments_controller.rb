class CommentsController < ApplicationController

    def index
        render json: Comment.all
    end

    def show
        comment = find_comment
        render json: comment
    end

    private
    def find_comment
        Comment.find(params[:id])
    end
end
