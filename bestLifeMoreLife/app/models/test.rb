class Test < ApplicationRecord
  has_many :user_tests
  has_many :users, through: :user_tests
  has_many :questions
  has_many :answers, through: :questions
end
