module HomeHelper
  def item_name item
    return item.user if item.is_a? PlannedTime
    item.name
  end

  def item_kw item
    item.when.cweek
  end

  def kw_start_date item
    date_for_kw item.when, 1
  end

  def kw_end_date item
    date_for_kw item.when, 7
  end

  def date_for_kw date, weekday
    Date.commercial( date.year, date.cweek, weekday ).strftime( "%Y-%m-%d" )
  end

  def item_hours item
    return -item.hours.to_i if item.is_a? Milestone
    item.estimated_or_achieved_hours_without_overhead
  end

  def milestone_color time
    return :success if time > -2.0
    return :error if time < -15.0
    :warning
  end
end
