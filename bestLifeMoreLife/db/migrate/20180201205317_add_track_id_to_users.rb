class AddTrackIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :track_id, :integer
  end
end
