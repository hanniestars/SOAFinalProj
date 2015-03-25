class AddHpToUsercreatures < ActiveRecord::Migration
  def change
  	  add_column(:user_creatures, :hp, :integer)
  end
end
