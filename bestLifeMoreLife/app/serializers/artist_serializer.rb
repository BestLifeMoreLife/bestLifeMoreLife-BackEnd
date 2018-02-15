class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :home_photo, :depressed_photo, :angry_photo, :happy_photo, :writing_photo, :listen_photo, :quotes
  has_many :quotes
end
