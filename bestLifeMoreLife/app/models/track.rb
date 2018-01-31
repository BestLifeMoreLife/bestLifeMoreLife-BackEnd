class Track < ApplicationRecord
  belongs_to :artist
  has_many :users

end
