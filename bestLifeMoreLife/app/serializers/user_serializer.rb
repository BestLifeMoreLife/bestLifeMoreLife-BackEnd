class UserSerializer < ActiveModel::Serializer
  attributes :entries, :journals, :track
end
