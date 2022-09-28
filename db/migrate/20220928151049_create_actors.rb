class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :piece
      t.string :role
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :director
      t.string :musiker
      t.string :choreo
      t.string :url
      t.boolean :premiere

      t.timestamps
    end
  end
end
