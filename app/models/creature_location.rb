class CreatureLocation < ActiveRecord::Base

	has_many :creatures
	has_many :locations
end
