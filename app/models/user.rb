class User < ApplicationRecord
    has_secure_password
    has_many :bookmarks
    has_many :recipes
end
