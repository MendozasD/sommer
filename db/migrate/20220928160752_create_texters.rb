class CreateTexters < ActiveRecord::Migration[6.1]
  def change
    create_table :texters do |t|
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
