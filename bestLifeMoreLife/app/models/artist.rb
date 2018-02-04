class Artist < ApplicationRecord
  has_many :artist_moods
  has_many :moods, through: :artist_moods
  has_many :quotes
  has_many :playlists
  has_many :tracks
  has_many :users, through: :tracks

  def self.scores
    scores = {}
    self.all.each {
      |artist|
      id = artist.id
      scores[id] = artist.score
    }
    scores
  end
end
