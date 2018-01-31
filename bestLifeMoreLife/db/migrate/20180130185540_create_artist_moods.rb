class CreateArtistMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_moods do |t|
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :mood, foreign_key: true

      t.timestamps
    end
  end
end
