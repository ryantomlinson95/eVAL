class AddCommentsToResults < ActiveRecord::Migration
  def change
    add_column :results, :comments, :string
  end
end
