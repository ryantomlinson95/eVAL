class AddGroupIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :group_id, :integer
  end
end
