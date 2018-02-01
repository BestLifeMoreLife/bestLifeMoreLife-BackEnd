class RemoveQuestionsFromTests < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :questions, :string
  end
end
