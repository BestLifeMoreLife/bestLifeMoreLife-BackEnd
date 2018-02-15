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

  def get_picture(mood_score)
    case mood_score
    when 1, 2
      self.depressed_photo
    when 3
      self.angry_photo
    when 4
      self.angry_photo
    else
      self.happy_photo

end
  end
end
