class CreatePlannedTimes < ActiveRecord::Migration
  def change
    create_table :planned_times do |t|
      t.decimal :hours, precision: 4, scale: 2, null: false
      t.date :when, null: false
      t.references :user, null: false
      t.references :project, null: false

      t.timestamps
    end
    add_index :planned_times, :user_id
    add_index :planned_times, :project_id
  end
end
