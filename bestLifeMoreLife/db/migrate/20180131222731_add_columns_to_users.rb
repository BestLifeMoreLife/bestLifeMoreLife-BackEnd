class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :display_name, :string
    add_column :users, :access_token, :string
    add_column :users, :refresh_token, :string
    add_column :users, :spotify_url, :string
    add_column :users, :profile_img_url, :string
    add_column :users, :href, :string
    add_column :users, :uri, :string
  end
end
