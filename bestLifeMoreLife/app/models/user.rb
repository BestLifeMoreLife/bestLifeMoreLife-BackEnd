class User < ApplicationRecord
  has_many :user_moods
  has_many :moods, through: :user_moods
  has_many :user_tests
  has_many :tests, through: :user_tests
  has_many :journals
  has_many :entries, through: :journals
  has_one :track
  has_one :artist, through: :track


def match_with_artist
  artist_scores = Artist.scores
  user_score = self.score
  closest_score = 10
  closest_artist = ""
  artist_scores.each{
    |key, value|
    (value - user_score).abs < closest_score ? closest_score = value && closest_artist = key : nil
  }
  Artist.find(closest_artist)
end
end
