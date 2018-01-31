class Entry < ApplicationRecord
  belongs_to :journal
  has_one :user, through: :journal
end
