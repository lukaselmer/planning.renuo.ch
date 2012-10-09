class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :planned_times

  def to_s()
    name
  end

  def planned_hours_by_week
    min_when = PlannedTime.order("`when` asc").first.when
    max_when = PlannedTime.order("`when` desc").first.when
    current_when = min_when
    hours = []
    ts = planned_times.order("`when` asc").to_a
    while current_when <= max_when
      if !ts.empty? && ts.first.when <= current_when
        t = ts.shift
        hours << t.hours.to_f
      else
        hours << 0
      end
      current_when += 1.week
    end
    hours
  end
end
