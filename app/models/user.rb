class User < ActiveRecord::Base
  attr_accessible :username, :id
  
  validates :username, :uniqueness => true, :presence => true
end
