class Changecolumninlocations < ActiveRecord::Migration
  def change
  	change_column(:locations, :gps_coordinate, :string)
  end
end
