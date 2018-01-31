class Quote < ApplicationRecord
  belongs_to :artist
  has_many :quote_moods
  has_many :moods, through: :quote_moods
end
