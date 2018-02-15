class AddScoreToQuotes < ActiveRecord::Migration[5.1]
  def change
    add_column :quotes, :score, :integer
  end
end
