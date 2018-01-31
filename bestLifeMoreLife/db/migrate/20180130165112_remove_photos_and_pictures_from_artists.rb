class RemovePhotosAndPicturesFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :photos
    remove_column :artists, :pictures 
  end
end
