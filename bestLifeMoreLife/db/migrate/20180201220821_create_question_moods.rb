class CreateQuestionMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :question_moods do |t|
      t.belongs_to :questions, foreign_key: true
      t.belongs_to :moods, foreign_key: true

      t.timestamps
    end
  end
end
