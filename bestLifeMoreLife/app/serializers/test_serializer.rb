class TestSerializer < ActiveModel::Serializer
  attributes :id, :questions, :name
  has_many :questions
end
