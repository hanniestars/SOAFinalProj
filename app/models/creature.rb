class Creature < ActiveRecord::Base
has_many :user_creatures
belongs_to :user
belongs_to :creature_location 

end
