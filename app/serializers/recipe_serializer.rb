class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_of_origin, :description, :ingredients, :directions,:image_url, :number_of_people_served, :time
end
