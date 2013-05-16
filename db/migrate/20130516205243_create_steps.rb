class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.string :description
      t.integer :task_id

      t.timestamps
    end
  end
end
