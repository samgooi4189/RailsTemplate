class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :password, :question_done, :username
  has_many :question
  validates :email, :presence =>true, :email => true
  validates_uniqueness_of :email
  validates :password, :presence =>true, :length => { :minimum => 8}
end
