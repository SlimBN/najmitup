class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address, :biography, :birthday, :birthmonth, :birthyear, :cid, :country_id, :is_coach, :name, :phone, :slug, :state_id, :town, :username, :website

  has_many :questions, :foreign_key => :user_id, :dependent => :destroy
  
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_taggable
  acts_as_taggable_on :skills, :interests
  
end
