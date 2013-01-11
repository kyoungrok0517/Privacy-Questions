class AddQuestionBodyAndTitleToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.string :question_title
      t.string :qusetion_selection
    end
  end
end
