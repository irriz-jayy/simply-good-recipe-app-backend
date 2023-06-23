class CommentsController < ApplicationController

    def index
        render json: Comment.all
    end

    def show
        comment = find_comment
        render json: comment
    end

    def create
        comment=Comment.create(comment_params)
        if comment.valid?
            render json: comment, status: :ok
        else
            render json: {errors:comment.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def find_comment
        Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:id,:user_id, :recipe_id,:comment)
    end
end
