class RemoveScoreFromTests < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :score, :integer
  end
end
