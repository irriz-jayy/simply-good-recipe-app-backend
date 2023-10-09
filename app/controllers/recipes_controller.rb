class RecipesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        render json: Recipe.all
    end

    def show
        recipe= find_recipe
        render json: recipe
    end

    def create
        recipe= Recipe.new(recipe_params)

        if params[:recipe][:image_url].present?
            cloudinary_url = params[:recipe][:image_url]
            recipe.image_url = cloudinary_url
        end

        if recipe.save
            render json: recipe, status: :created
        else
            render json:{errors:recipe.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        recipe = find_recipe
    
        if recipe.update(recipe_params)
          render json: recipe, status: :ok
        else
          render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        # Find the recipe by id
        recipe = Recipe.find(params[:id])
    
        if recipe.destroy
          render json: { message: 'Recipe deleted successfully' }, status: :no_content
        else
          render json: { error: 'Failed to delete recipe' }, status: :unprocessable_entity
        end
      end


    private
    def find_recipe
        Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:id, :user_id, :name, :country_of_origin, :description, :ingredients, :directions, :number_of_people_served, :time)
    end
end
