class ChangeQuestionss < ActiveRecord::Migration
  def change
    remove_column :questions, :question_type_id
    
    change_table :questions do |t|
      t.string :question_type
    end
  end
end
