class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]

  def email_required?
    false
  end

  def email_changed?
    false
  end



has_many :user_creatures
has_many :creatures, :through => :user_creature
has_many :trades, foreign_key: :trade_id

	def to_s
		self.email
	end

end
