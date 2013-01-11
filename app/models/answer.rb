class Answer < ActiveRecord::Base
  attr_accessible :user_id, :question_id, :answer
  
  belongs_to :user
  belongs_to :question# attr_accessible :title, :body
end
