class User < ActiveRecord::Base
  attr_accessible :email, :password, :question_done, :username
end
