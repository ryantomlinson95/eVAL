class AddGroupIdToEvals < ActiveRecord::Migration
  def change
    add_column :evals, :group_id, :integer
  end
end
