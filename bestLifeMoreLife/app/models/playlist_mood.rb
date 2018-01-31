class PlaylistMood < ApplicationRecord
  belongs_to :playlist
  belongs_to :mood
end
