class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_of_origin, :description, :ingredients, :directions, :number_of_people_served
end
