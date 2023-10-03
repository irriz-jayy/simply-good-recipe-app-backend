class Recipe < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true
  validates :image_url ,presence: true
  validates :number_of_people_served, presence: true

end
