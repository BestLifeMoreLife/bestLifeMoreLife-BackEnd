class AddPhotosToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :photos, :hstore, default: {}, null: false
  end
end
