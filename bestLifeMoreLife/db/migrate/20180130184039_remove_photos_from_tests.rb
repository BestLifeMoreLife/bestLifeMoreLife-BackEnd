class RemovePhotosFromTests < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :photos
    add_column :tests, :questions, :string, array: true
  end
end
