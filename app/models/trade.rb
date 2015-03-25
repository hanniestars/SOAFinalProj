class Trade < ActiveRecord::Base

	belongs_to :user, :class_name => 'User', foreign_key: 'user_id_a'
	belongs_to :user, :class_name => 'User', foreign_key: 'user_id_b'
	belongs_to :user_creature, :class_name => 'User Creature', foreign_key: 'creature_a'
	belongs_to :user_creature, :class_name => 'User Creature', foreign_key: 'creature_b'

end
