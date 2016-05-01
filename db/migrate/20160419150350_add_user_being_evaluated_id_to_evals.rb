class AddUserBeingEvaluatedIdToEvals < ActiveRecord::Migration
  def change
    add_column :evals, :user_being_evaluated_id, :integer
  end
end
