class UserSerializer < ActiveModel::Serializer
  attributes  :id,:name, :email, :username, :profile_picture_url
end
