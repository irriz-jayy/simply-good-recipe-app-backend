class UserSerializer < ActiveModel::Serializer
  attributes  :name, :email, :username, :profile_picture_url
end
