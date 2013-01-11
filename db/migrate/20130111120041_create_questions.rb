class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :resource_id
      t.string :type
      t.string :answer
      
      t.timestamps
    end
  end
end
