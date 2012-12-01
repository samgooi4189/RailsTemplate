class User < ActiveRecord::Base
  attr_accessible :email, :password, :question_done, :username
  validates :email, :presence =>true, :email => true
  validates :password, :presence =>true, :length => { :minimum => 8}
  validates :username, :presence =>true, :length => { :maximum => 25}
end
