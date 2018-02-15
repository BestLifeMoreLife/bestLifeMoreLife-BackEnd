class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :score, :song, :artist_id

end
