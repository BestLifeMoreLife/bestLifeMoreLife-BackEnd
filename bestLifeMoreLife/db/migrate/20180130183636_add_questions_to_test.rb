class AddQuestionsToTest < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :photos, :string, array: true

  end
end
