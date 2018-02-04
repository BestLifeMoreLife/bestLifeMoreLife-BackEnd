class RemoveQuestionsIdFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :questions_id, :string
  end
end
