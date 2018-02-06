class UserSerializer < ActiveModel::Serializer
  attributes :entries, :journal, :track
  has_one :journal
  has_many :entries, through: :journal
end
