class UserCreature < ActiveRecord::Base
belongs_to :user
belongs_to :creature 

has_many :trades
end
