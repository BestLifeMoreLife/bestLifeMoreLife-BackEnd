class Mood < ApplicationRecord
  has_many :playlist_moods
  has_many :playlists, through: :playlist_moods
  has_many :artist_moods
  has_many :artists, through: :artist_moods
  has_many :user_moods
  has_many :users, through: :user_moods
  has_many :quote_moods
  has_many :quotes, through: :quote_moods
end
