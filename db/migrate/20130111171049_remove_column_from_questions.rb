class RemoveColumnFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :question_types_id
  end
end
