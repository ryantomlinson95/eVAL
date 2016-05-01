class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      t.boolean :attempt
      t.string :name

      t.timestamps null: false
    end
  end
end
