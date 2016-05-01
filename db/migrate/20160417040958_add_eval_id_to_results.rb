class AddEvalIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :eval_id, :integer
  end
end
