class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :link
      t.integer :score
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
