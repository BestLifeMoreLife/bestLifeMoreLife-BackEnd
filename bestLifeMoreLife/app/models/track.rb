class Track < ApplicationRecord
  has_one :user
  belongs_to :artist

  def name
    @name = "#{self.artist.name}'s Track'"
  end
end
