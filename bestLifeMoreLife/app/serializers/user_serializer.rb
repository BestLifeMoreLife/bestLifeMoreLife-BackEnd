class UserSerializer < ActiveModel::Serializer
  attributes :entries, :journal, :track, :artist, :id, :score
  has_one :track
  has_one :journal
  has_one :artist, through: :track
  has_many :entries, through: :journal
end
