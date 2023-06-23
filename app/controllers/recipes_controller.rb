class RecipesController < ApplicationController
    before_action :set_recipes, only: [:index, :show]

    def index
        render json: @recipes, status: :ok
    end

    private
    def set_recipes
        @recipes = Recipe.all
    end
end
