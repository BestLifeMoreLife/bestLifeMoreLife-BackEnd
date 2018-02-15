class Track < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  def name
    @name = "#{self.artist.name}"
  end
end
