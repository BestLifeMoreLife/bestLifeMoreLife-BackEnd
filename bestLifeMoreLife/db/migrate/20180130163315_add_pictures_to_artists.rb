class AddPicturesToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :pictures, :hstore, default: {}, null: false
  end
end
