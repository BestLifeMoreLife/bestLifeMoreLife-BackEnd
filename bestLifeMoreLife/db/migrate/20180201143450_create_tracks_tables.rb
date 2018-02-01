class CreateTracksTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
