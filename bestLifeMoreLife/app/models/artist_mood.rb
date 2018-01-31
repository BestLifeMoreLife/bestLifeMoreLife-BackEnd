class ArtistMood < ApplicationRecord
  belongs_to :artist
  belongs_to :mood
end
