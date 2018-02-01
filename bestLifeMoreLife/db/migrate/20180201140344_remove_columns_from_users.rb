class RemoveColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :email, :string
    remove_column :users, :spotify_url, :string
    remove_column :users, :profile_img_url, :string
    remove_column :users, :href, :string
    remove_column :users, :uri, :string
  end
end
