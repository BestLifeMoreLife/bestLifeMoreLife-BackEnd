class QuoteMood < ApplicationRecord
  belongs_to :quote
  belongs_to :mood
end
