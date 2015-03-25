class CreateUsercreaturemoves < ActiveRecord::Migration
  def change
    create_table :usercreaturemoves do |t|
      t.integer :user_creature_id
      t.integer :move_id
      t.integer :max_number
      t.integer :experience_points

      t.timestamps null: false
    end
  end
end
