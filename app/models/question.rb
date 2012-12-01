class Question < ActiveRecord::Base
  attr_accessible :answer, :title, :user_id
  validates :title, :presence => true;
  validates :answer, :presence => true;
  validates :user_id, :presence =>true;
end
