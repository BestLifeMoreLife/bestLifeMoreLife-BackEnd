class UserSerializer < ActiveModel::Serializer
  attributes :entries, :journal, :track, :artist
  has_one :journal
  has_one :artist, through: :track
  has_many :entries, through: :journal
end
