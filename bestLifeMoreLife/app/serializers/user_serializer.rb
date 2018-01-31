class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :entries, :journals, :artist
end
