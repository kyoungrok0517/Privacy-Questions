class ChangeColumnNameOfQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :qusetion_selection, :question_selection
  end
end
