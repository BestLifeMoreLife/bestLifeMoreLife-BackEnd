class User < ApplicationRecord
  has_secure_password
  has_many :user_moods
  has_many :moods, through: :user_moods
  has_many :user_tests
  has_many :tests, through: :user_tests
  has_many :journals
  has_many :entries, through: :journals
  belongs_to :track

  def artist
      @artist = self.track.artist
  end
end
