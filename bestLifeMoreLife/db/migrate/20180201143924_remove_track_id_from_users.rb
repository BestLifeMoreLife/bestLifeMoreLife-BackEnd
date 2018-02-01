class RemoveTrackIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :track_id, :string
  end
end
