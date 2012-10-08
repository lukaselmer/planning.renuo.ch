module HomeHelper
  def item_name item
    return item.name if item.is_a? Milestone
    item.user
  end
  def item_kw item
    return item.when.cweek
  end
  def item_hours item
    return -item.hours.to_i if item.is_a? Milestone
    item.hours_without_overhead
  end
end
