class AddSongToQuotes < ActiveRecord::Migration[5.1]
  def change
    add_column :quotes, :song, :string
  end
end
