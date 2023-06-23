class CommentsController < ApplicationController
    before_action :set_comments, only: [:index, :show]

    def index
      render json: @comments
    end

    private
    def set_comments
        @comments = Comment.all
    end
end
