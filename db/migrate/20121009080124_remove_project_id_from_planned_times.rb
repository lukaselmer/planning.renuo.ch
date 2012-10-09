class RemoveProjectIdFromPlannedTimes < ActiveRecord::Migration
  def up
    remove_column :planned_times, :project_id
  end

  def down
    add_column :planned_times, :project_id, :integer
  end
end
