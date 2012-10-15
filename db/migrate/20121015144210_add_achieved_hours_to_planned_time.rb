class AddAchievedHoursToPlannedTime < ActiveRecord::Migration
  def change
    add_column :planned_times, :achieved_hours, :decimal, precision: 4, scale: 2
  end
end
