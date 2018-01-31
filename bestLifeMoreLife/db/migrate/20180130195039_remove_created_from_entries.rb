class RemoveCreatedFromEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :created
  end
end
