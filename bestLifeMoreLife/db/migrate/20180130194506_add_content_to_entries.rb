class AddContentToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :content, :text
  end
end
