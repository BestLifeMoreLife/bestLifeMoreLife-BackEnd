class Playlist < ApplicationRecord
  belongs_to :artist
  has_many :playlist_moods
  has_many :moods, through: :playlist_moods

  def self.findPlaylist (artist, score)
    playlists = Playlist.all.select{|playlist| playlist.artist === artist}
    user_score = score > 5 ? 5 : score
    playlists.find{|playlist| playlist.score === user_score}
  end
end
