class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null:false
      t.string :country_of_origin , null:false
      t.text :description, null:false
      t.text :ingredients, null:false
      t.text :directions, null:false
      t.integer :number_of_people_served, null:false

      t.timestamps
    end
  end
end
