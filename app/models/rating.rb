class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :user_id,presence: true
  validates :recipe_id, presence: true
  validates :rating, presence: true
end
