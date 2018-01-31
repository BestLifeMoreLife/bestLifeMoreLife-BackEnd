class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.belongs_to :journal, foreign_key: true
      t.boolean :public
      t.datetime :created

      t.timestamps
    end
  end
end
