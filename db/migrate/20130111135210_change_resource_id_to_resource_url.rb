class ChangeResourceIdToResourceUrl < ActiveRecord::Migration
  def change
    rename_column :questions, :resource_id, :resource_url
  end
end
