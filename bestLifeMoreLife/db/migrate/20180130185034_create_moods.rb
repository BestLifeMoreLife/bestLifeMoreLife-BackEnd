class CreateMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :moods do |t|
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
