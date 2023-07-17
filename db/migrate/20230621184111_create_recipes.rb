class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :country_of_origin
      t.text :description
      t.text :ingredients
      t.text :directions
      t.string :image_url
      t.string :time
      t.integer :number_of_people_served

      t.timestamps
    end
  end
end
