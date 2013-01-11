class User < ActiveRecord::Base
  attr_accessible :username
  
  validates :username, :uniqueness => true
end
