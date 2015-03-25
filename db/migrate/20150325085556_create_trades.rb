class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_id_a
      t.integer :user_id_b
      t.integer :creature_a
      t.integer :creature_b

      t.timestamps null: false
    end
  end
end
