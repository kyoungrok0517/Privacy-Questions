class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers, :force => true do |t|
      t.references :users
      t.references :questions
      t.string :answer

      t.timestamps
    end
  end
end
