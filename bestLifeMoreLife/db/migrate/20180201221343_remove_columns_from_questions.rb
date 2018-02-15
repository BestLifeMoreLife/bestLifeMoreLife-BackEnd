class RemoveColumnsFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :score, :string
  end
end
