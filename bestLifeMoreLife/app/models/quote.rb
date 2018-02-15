class Quote < ApplicationRecord
  belongs_to :artist
  has_many :quote_moods
  has_many :moods, through: :quote_moods

  def self.matchQuote(score)
    Quote.all.select{|quote| quote.score === score}
  end
end
