class RemovePhotosFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :photos, :hstore
  end
end
