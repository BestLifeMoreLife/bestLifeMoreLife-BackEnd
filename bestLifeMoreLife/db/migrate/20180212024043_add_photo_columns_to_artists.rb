class AddPhotoColumnsToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :home_photo, :string
    add_column :artists, :depressed_photo, :string
    add_column :artists, :angry_photo, :string
    add_column :artists, :happy_photo, :string
    add_column :artists, :writing_photo, :string
    add_column :artists, :listen_photo, :string
  end
end
