class User < ApplicationRecord
  has_many :user_moods
  has_many :moods, through: :user_moods
  has_many :user_tests
  has_many :tests, through: :user_tests
  has_many :journals
  has_many :entries, through: :journals
  has_one :track
  has_one :artist, through: :track

end
