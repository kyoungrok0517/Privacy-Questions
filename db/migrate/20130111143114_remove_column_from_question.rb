class RemoveColumnFromQuestion < ActiveRecord::Migration
  def change
    remove_column :questions, :answer
  end
end
