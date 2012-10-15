class PlannedTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def hours_without_overhead
    (hours * (100.0-user.overhead)).round / 100.0
  end

  def estimated_or_achieved_hours_without_overhead
    achieved_hours.to_f != 0.0 ? achieved_hours : hours_without_overhead
  end
end
