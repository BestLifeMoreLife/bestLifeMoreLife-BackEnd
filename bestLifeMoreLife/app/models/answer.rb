class Answer < ApplicationRecord
  has_one :answer_mood
  belongs_to :question
end
