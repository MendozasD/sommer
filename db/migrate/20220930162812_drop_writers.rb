class DropWriters < ActiveRecord::Migration[6.1]
  def change
    drop_table :writers
  end
end
