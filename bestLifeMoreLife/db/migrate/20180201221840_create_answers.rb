class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :score
      t.belongs_to :questions, foreign_key: true

      t.timestamps
    end
  end
end
