class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :max_number
      t.string :type

      t.timestamps null: false
    end
  end
end
