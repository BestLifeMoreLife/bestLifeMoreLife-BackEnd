class Playlist < ApplicationRecord
  belongs_to :artist
  has_many :playlist_moods
  has_many :moods, through: :playlist_moods
end
