class AddUserIdToEvals < ActiveRecord::Migration
  def change
    add_column :evals, :user_id, :integer
  end
end
