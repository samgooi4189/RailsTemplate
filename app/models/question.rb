class Question < ActiveRecord::Base
  attr_accessible :answer, :title, :user_id
  belongs_to :user
  validates :title, :presence => true;
  validates :answer, :presence => true;
  validates :user_id, :presence =>true;
end
