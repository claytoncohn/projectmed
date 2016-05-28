class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
 has_many :favorites
 has_many :favorite_products, through: :favorites, source: :favorited, source_type: 'Product'
 ratyrate_rater
 
  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :conversations, :foreign_key => :sender_id
  has_many :watches
  has_many :watched_items, :through => :watches

end
