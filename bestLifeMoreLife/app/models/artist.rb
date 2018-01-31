class Artist < ApplicationRecord
  has_many :artist_moods
  has_many :moods, through: :artist_moods
  has_many :quotes
  has_many :playlists
end
