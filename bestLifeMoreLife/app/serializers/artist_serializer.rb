class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :score, :home_photo, :depressed_photo, :angry_photo, :happy_photo, :writing_photo, :listen_photo

end
