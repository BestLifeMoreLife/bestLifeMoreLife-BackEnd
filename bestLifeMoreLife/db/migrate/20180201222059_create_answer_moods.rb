class CreateAnswerMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_moods do |t|
      t.belongs_to :answers, foreign_key: true
      t.belongs_to :moods, foreign_key: true

      t.timestamps
    end
  end
end
