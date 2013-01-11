class Question < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :type, :resource_id, :answer
end
