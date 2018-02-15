class JournalSerializer < ActiveModel::Serializer
  attributes :id, :entries, :user_id
  has_many :entries
end
