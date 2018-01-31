class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :score
      t.string  :photos, array:true, default:[]

      t.timestamps
    end
  end
end
