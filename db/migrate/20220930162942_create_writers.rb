class CreateWriters < ActiveRecord::Migration[6.1]
  def change
    create_table :writers do |t|
      t.string :piece
      t.string :genre
      t.integer :year
      t.string :responsible
      t.text :comment
      t.boolean :premiere

      t.timestamps
    end
  end
end
