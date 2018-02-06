class QuestionSerializer < ActiveModel::Serializer
  attributes :answers, :content
  has_many :answers
end
