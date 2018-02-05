class JournalSerializer < ActiveModel::Serializer
  attributes :id, :entries
  has_many :entries
end
