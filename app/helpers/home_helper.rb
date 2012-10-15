module HomeHelper
  def item_name item
    return item.name if item.is_a? Milestone
    item.user
  end
  def item_kw item
    item.when.cweek
  end
  def item_hours item
    return -item.hours.to_i if item.is_a? Milestone
    item.estimated_or_achieved_hours_without_overhead
  end
end
