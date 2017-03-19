class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :model
      t.integer :length
      t.string :style

      t.timestamps
    end
  end
end
