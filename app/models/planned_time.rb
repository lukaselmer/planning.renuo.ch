class PlannedTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  def hours_without_overhead
    (hours * (100.0-user.overhead)).round / 100.0
  end
end
