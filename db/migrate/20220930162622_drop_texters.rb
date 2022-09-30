class DropTexters < ActiveRecord::Migration[6.1]
  def change
    drop_table :texters
  end
end
