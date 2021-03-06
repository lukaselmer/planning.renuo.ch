class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :name, null: false
      t.date :when, null: false
      t.integer :hours, null: false
      t.references :project

      t.timestamps
    end
  end
end
