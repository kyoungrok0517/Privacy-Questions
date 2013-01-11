class AddFieldsToQuestion < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.string :resource_id
      t.string :type
      t.string :answer
    end
  end
end
