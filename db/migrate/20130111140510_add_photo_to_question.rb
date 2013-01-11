class AddPhotoToQuestion < ActiveRecord::Migration
  def change
     add_attachment :questions, :photo
  end
end
